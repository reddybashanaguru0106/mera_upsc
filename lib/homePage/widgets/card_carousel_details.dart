// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import '../../whatsHappening/widgets/newsdetails.dart';

class CardCarouselDetails extends StatelessWidget {
  final article;
  const CardCarouselDetails({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MERA UPSC'),
      ),
      body: NewsDetails(article: article),
    );
  }
}
