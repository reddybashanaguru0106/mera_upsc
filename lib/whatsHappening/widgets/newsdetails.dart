// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
// import 'package:flutter_html/flutter_html.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const Color darkBlue = Color(0xFF12202F);

class NewsDetails extends StatefulWidget {
  final article;
  const NewsDetails({Key? key, required this.article}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  String fullArticleContent = ''; // Store the full article content

  @override
  void initState() {
    super.initState();
    _fetchFullArticleContent();
  }

  Future<void> _fetchFullArticleContent() async {
    try {
      final response = await http.get(Uri.parse(widget.article.url));
      // ignore: avoid_print
      print(Uri.parse(widget.article.url));
      if (response.statusCode == 200) {
        final document = parser.parse(response.body);
        final entryContentElement = document.querySelector('.entry-content');
        if (entryContentElement != null) {
          setState(() {
            fullArticleContent = entryContentElement.innerHtml;
          });
        } else {
          setState(() {
            fullArticleContent = 'Full content not found.';
          });
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error fetching full article content: $e');
      setState(() {
        fullArticleContent = 'Error loading full content.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('dd/MM/yyyy').format(
                DateTime.parse(widget.article.publishedAt),
              ),
              style: const TextStyle(
                color: darkBlue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.end,
            ),
            Text(
              widget.article.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const SizedBox(height: 16.0),
            Text(
              widget.article.description,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image(image: NetworkImage(widget.article.imageUrl)),
            // if (fullArticleContent.isNotEmpty) ...[
            //   const SizedBox(height: 16.0),
            //   Html(data: fullArticleContent), // Render HTML content
            // ],
          ],
        ),
      ),
    );
  }
}
