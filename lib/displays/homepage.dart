import 'package:flutter/material.dart';
import 'package:learning_flutter_4cs1/components/card_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> cardData = [
      {
        'title': 'Flutter Development',
        'subtitle': 'Learn to build beautiful cross-platform applications',
        'imageUrl': 'https://picsum.photos/200/300',
      },
      {
        'title': 'Flutter Development',
        'subtitle': 'Learn to build beautiful cross-platform applications',
        'imageUrl': 'https://picsum.photos/200/300',
      },
      {
        'title': 'Flutter Development',
        'subtitle': 'Learn to build beautiful cross-platform applications',
        'imageUrl': 'https://picsum.photos/200/300',
      },
      {
        'title': 'Flutter Development',
        'subtitle': 'Learn to build beautiful cross-platform applications',
        'imageUrl': 'https://picsum.photos/200/300',
      },
      {
        'title': 'Flutter Development',
        'subtitle': 'Learn to build beautiful cross-platform applications',
        'imageUrl': 'https://picsum.photos/200/300',
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: cardData.length,
      itemBuilder: (context, index) {
        return CardItem(
          title: cardData[index]['title']!,
          subtitle: cardData[index]['subtitle']!,
          imageUrl: cardData[index]['imageUrl']!,
        );
      },
    );
  }
}
