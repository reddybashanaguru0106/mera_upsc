import 'package:flutter/material.dart';
import 'package:mera_upsc/whatsHappening/helper/index.dart';

class MySportsTab extends StatefulWidget {
  const MySportsTab({super.key});

  @override
  State<MySportsTab> createState() => _MySportsTabState();
}

class _MySportsTabState extends State<MySportsTab> {
  final ScrollController _scrollController = ScrollController();
  List<Article> _articles = [];
  final _currentCategory = 'sports';
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // _loadArticles();
  }

  Future<void> _loadArticles() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final articles = await fetchNewsArticles(category: _currentCategory);
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
                return Card(
                    clipBehavior: Clip.hardEdge,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      // onTap: () {
                      //   debugPrint('Card tapped.');
                      // },
                      child: ListTile(
                        leading: Image.network(
                          article.imageUrl,
                          width: 64.0,
                          height: 64.0,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          article.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(article.description),
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
