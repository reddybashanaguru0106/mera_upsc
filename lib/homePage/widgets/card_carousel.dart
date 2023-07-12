import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

const Color darkBlue = Color(0xFF12202F);

class HoriontalListViewWithDotIndicator extends StatefulWidget {
  const HoriontalListViewWithDotIndicator({Key? key}) : super(key: key);

  @override
  State<HoriontalListViewWithDotIndicator> createState() =>
      _HoriontalListViewWithDotIndicatorState();
}

class _HoriontalListViewWithDotIndicatorState
    extends State<HoriontalListViewWithDotIndicator> {
  final List<CurrentAffair> currentAffairs = [
    CurrentAffair(
      title:
          "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
      description:
          'The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership,The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadershipThe rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership',
      date: 'July 1, 2023',
    ),
    CurrentAffair(
      title:
          "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
      description:
          'The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership',
      date: 'July 1, 2023',
    ),
    CurrentAffair(
      title:
          "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
      description:
          'The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership',
      date: 'July 1, 2023',
    ),
    CurrentAffair(
      title:
          "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
      description:
          'The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership',
      date: 'July 1, 2023',
    ),
    CurrentAffair(
      title:
          "Ukraine live briefing: Revolt calls into question Putin's grip on power and Wagner Group's future - The Washington Post",
      description:
          'The rebellion led by Yevgeniy Prigozhin illuminated “cracks in the facade” of Putin’s leadership',
      date: 'July 1, 2023',
    ),
  ];

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
              itemCount: currentAffairs.length,
              itemBuilder: (context, index) {
                final currentAffair = currentAffairs[index];
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
                                flex: 2,
                                child: Text(
                                  currentAffair.title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    overflow: TextOverflow.clip,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  currentAffair.date,
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
                            currentAffair.description,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                            maxLines: 6,
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
            dotsCount: currentAffairs.length,
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
