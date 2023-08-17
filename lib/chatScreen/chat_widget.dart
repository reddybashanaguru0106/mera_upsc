import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:bubble/bubble.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:intl/date_symbol_data_local.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:http/http.dart' as http;

const Color darkBlue = Color(0xFF12202F);

class MyChatWidget extends StatelessWidget {
  const MyChatWidget({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: ChatPage(),
      );
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _auth = firebase_auth.FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _storage = firebase_storage.FirebaseStorage.instance;
  late types.User _user;
  final _otherUser = const types.User(id: 'other_user_id');
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _initializeUser();
    _loadMessages();
    _handleEndReached();
  }

  void _initializeUser() async {
    final user = _auth.currentUser;
    // print(user);

    if (user != null) {
      setState(() {
        _user = types.User(id: user.uid, firstName: user.displayName);
      });
    }
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _uploadFile(String filePath) async {
    final file = File(filePath);
    final fileName = '${const Uuid().v4()}-${file.path.split('/').last}';
    final ref = _storage.ref().child(fileName);

    await ref.putFile(file);
    return await ref.getDownloadURL();
  }

  Future<void> _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final fileMessage = await _uploadFile(result.files.single.path!);
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: fileMessage,
      );

      _addMessage(message);
      await _saveMessageToFirestore(message);
    }
  }

  Future<void> _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final imageMessage = await _uploadFile(result.path);
      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: imageMessage,
        width: image.width.toDouble(),
      );

      _addMessage(message);
      await _saveMessageToFirestore(message);
    }
  }

  Future<void> _saveMessageToFirestore(types.Message message) async {
    final user = _auth.currentUser;
    if (user == null) return;

    String messageType;
    String uri = '';

    if (message is types.FileMessage) {
      messageType = 'file';
      uri = message.uri;
    } else if (message is types.ImageMessage) {
      messageType = 'image';
      uri = message.uri;
    } else {
      messageType = 'text';
    }

    print(message);

    final messageData = {
      'authorId': message.author.id,
      'displayName': message.author.firstName,
      'createdAt': message.createdAt,
      'id': message.id,
      'type': messageType,
      'text': message is types.TextMessage ? (message).text : '',
      'uri': uri,
    };

    await _firestore.collection('messages').add(messageData);
  }

  Future<void> _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      if (message.uri.startsWith('http')) {
        final index =
            _messages.indexWhere((element) => element.id == message.id);
        final updatedMessage = (message).copyWith(
          isLoading: true,
        );

        setState(() {
          _messages[index] = updatedMessage;
        });

        try {
          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          final localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }

          await OpenFilex.open(localPath);
        } finally {
          final index =
              _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage = (message).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      } else {
        await OpenFilex.open(message.uri);
      }
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
    await _saveMessageToFirestore(textMessage);
  }

  Future<void> _loadMessages() async {
    final user = _auth.currentUser;
    if (user == null) return;

    final messagesSnapshot = await _firestore
        .collection('messages')
        .orderBy('createdAt', descending: true)
        .get();

    final messages = messagesSnapshot.docs
        .map((doc) => _messageFromDocumentSnapshot(doc))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  types.Message _messageFromDocumentSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    final author = _user.id == data['authorId'] ? _user : _otherUser;

    if (data['type'] == 'file') {
      return types.FileMessage(
        author: author,
        createdAt: data['createdAt'],
        id: data['id'],
        mimeType: '',
        name: '',
        size: 0,
        uri: data['uri'],
      );
    } else if (data['type'] == 'image') {
      return types.ImageMessage(
        author: author,
        createdAt: data['createdAt'],
        height: 0,
        id: data['id'],
        name: '',
        size: 0,
        uri: data['uri'],
        width: 0,
      );
    } else {
      return types.TextMessage(
        author: author,
        createdAt: data['createdAt'],
        id: data['id'],
        text: data['text'],
      );
    }
  }

  static const styleSomebody = BubbleStyle(
    nip: BubbleNip.leftCenter,
    color: Colors.white,
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, right: 50),
    alignment: Alignment.topLeft,
  );

  static const styleMe = BubbleStyle(
    nip: BubbleNip.rightCenter,
    color: Color.fromARGB(255, 225, 255, 199),
    borderColor: Colors.blue,
    borderWidth: 1,
    elevation: 4,
    margin: BubbleEdges.only(top: 8, left: 50),
    alignment: Alignment.topRight,
  );

  Future<void> _handleEndReached() async {
    final uri = Uri.parse(
      'https://api.instantwebtools.net/v1/passenger?page=$_page&size=20',
    );
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final data = json['data'] as List<dynamic>;
    final messages = data
        .map(
          (e) => types.TextMessage(
            author: _user,
            id: e['_id'] as String,
            text: e['name'] as String,
          ),
        )
        .toList();
    setState(() {
      _messages = [..._messages, ...messages];
      _page = _page + 1;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Chat(
          theme: const DefaultChatTheme(
            inputBackgroundColor: darkBlue,
          ),
          messages: _messages,
          onAttachmentPressed: _handleAttachmentPressed,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: _user,
          onEndReached: _handleEndReached,
          bubbleBuilder: _bubbleBuilder,
        ),
      );

  Widget _bubbleBuilder(
    Widget child, {
    required message,
    required nextMessageInGroup,
  }) =>
      Bubble(
        color: _user.id != message.author.id ||
                message.type == types.MessageType.image
            ? const Color(0xfff5f5f7)
            : darkBlue,
        margin: nextMessageInGroup
            ? const BubbleEdges.symmetric(horizontal: 6)
            : null,
        nip: nextMessageInGroup
            ? BubbleNip.no
            : _user.id != message.author.id
                ? BubbleNip.leftBottom
                : BubbleNip.rightBottom,
        style: _user.id != message.author.id ? styleSomebody : styleMe,
        child: child,
      );
}
