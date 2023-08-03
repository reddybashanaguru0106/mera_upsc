// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const Color darkBlue = Color(0xFF12202F);

class NewsDetails extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final article;
  const NewsDetails({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    print(article);
    return MaterialApp(
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(darkBlue),
          thickness: MaterialStateProperty.all<double>(2.0),
        ),
      ),
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 730,
              width: 450,
              child: Card(
                  elevation: 1,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateFormat('dd/mm/yy').format(
                            DateTime.parse(article.publishedAt),
                          ),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 16, 1, 1),
                          ),
                        ),
                        Text(
                          article.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const SizedBox(height: 16.0),
                        Text(
                          article.description,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        // Image(image: AssetImage(article.urlToImage)),
                        //       ? article.urlToImage
                        //       : './images/sampleProfile.png'),
                        // ),
                        // Text(
                        //   article.content,
                        //   style: const TextStyle(
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.w500,
                        //   ),
                        // ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
