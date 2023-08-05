import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> handelBackgroundMessage(RemoteMessage message) async {
  print('Title:${message.notification?.title}');
  print('Body:${message.notification?.body}');
  print('Playload:${message.data}');
}

class FirebaseApi {
  final _FirebaseMessaging = FirebaseMessaging.instance;

  Future<void> intiNotifications() async {
    await _FirebaseMessaging.requestPermission();
    final fcmToken = await _FirebaseMessaging.getToken();
    print('Token:$fcmToken');
    FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
  }
}
