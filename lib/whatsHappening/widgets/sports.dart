import 'package:flutter/material.dart';
import 'package:mera_upsc/whatsHappening/helper/index.dart';
import 'newsdetails.dart';

class MyNewsTab extends StatefulWidget {
  final String category;

  const MyNewsTab({super.key, required this.category});

  @override
  State<MyNewsTab> createState() => _MySportsTabState();
}

class _MySportsTabState extends State<MyNewsTab> {
  final ScrollController _scrollController = ScrollController();
  List<Article> _articles = [];
  // final _currentCategory = 'sports';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadArticles();
  }

  Future<void> _loadArticles() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final articles = await fetchNewsArticles(category: widget.category);
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

  bool _isValidUrl(String url) {
    return Uri.tryParse(url)?.isAbsolute ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            child: const CircularProgressIndicator(),
          )
        : ListView.builder(
            controller: _scrollController,
            itemCount: _articles.length + 1,
            itemBuilder: (context, index) {
              if (index < _articles.length) {
                final article = _articles[index];
                final imageUrl = article.imageUrl;
                return Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      // onTap: () {
                      //   debugPrint('Card tapped.');
                      // },
                      child: ListTile(
                        leading: _isValidUrl(imageUrl)
                            ? Image.network(
                                article.imageUrl,
                                width: 64.0,
                                height: 64.0,
                                fit: BoxFit.cover,
                              )
                            : const Icon(Icons.image),
                        title: Text(
                          article.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(article.description),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NewsDetails(article: article),
                            ),
                          );
                        },
                      ),
                    ));
              } else {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'No',
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                );
              }
            },
          );
  }
}
