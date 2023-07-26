import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mera_upsc/whatsHappening/helper/index.dart';
import 'package:intl/intl.dart';

// import 'package:mera_upsc/whatsHappening/main.dart';

const Color darkBlue = Color(0xFF12202F);

class HoriontalListViewWithDotIndicator extends StatefulWidget {
  final country;
  final query;
  const HoriontalListViewWithDotIndicator(
      {super.key, required this.country, required this.query});

  @override
  State<HoriontalListViewWithDotIndicator> createState() =>
      _HoriontalListViewWithDotIndicatorState();
}

class _HoriontalListViewWithDotIndicatorState
    extends State<HoriontalListViewWithDotIndicator> {
  List<Article> _articles = [];
  bool _isLoading = false;

  final PageController _pageController = PageController();
  double _currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPageIndex = _pageController.page!;
      });
    });
    _loadArticles();
  }

  Future<void> _loadArticles() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final articles =
          await fetchNewsArticles(category: "", pageSize: '5', country: 'in');
      setState(() {
        _articles = articles;
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to fetch news articles.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  void changeItem(int index) {
    setState(() {
      _currentPageIndex = index.toDouble();
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  // void main() {
  //   String publishedAt = "2023-06-26T09:38:00Z";

  //   // Convert the string to DateTime
  //   DateTime dateTime = DateTime.parse(publishedAt);

  //   // Format the date as "dd/MM/yyyy"
  //   String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);

  //   // Output: 26/06/2023
  // }

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: darkBlue,
      size: const Size.square(8.0),
      activeSize: const Size.square(8.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );

    return SizedBox(
      width: 400,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: _articles.length,
              itemBuilder: (context, index) {
                final article = _articles[index];
                return Container(
                  width: 380,
                  margin: const EdgeInsets.all(8.0),
                  child: Card(
                    color: const Color.fromARGB(255, 165, 221, 247),
                    elevation: 2.0,
                    shadowColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  article.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    overflow: TextOverflow.clip,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  DateFormat('dd/MM/yyyy').format(
                                      DateTime.parse(article.publishedAt)),
                                  style: const TextStyle(
                                    color: darkBlue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            article.description,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                            maxLines: 6,
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          DotsIndicator(
            dotsCount: _articles.length,
            position: _currentPageIndex.toInt(),
            decorator: decorator,
            onTap: (pos) {
              setState(() {
                changeItem(pos.toInt());
              });
            },
          ),
        ],
      ),
    );
  }
}

class CurrentAffair {
  final String title;
  final String description;
  final String date;

  CurrentAffair({
    required this.title,
    required this.description,
    required this.date,
  });
}
