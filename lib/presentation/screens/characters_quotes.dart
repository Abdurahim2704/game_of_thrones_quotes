import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/data/models/character_model.dart';
import 'package:game_of_thrones_quotes/presentation/views/quote_cart_without_author.dart';

class CharactersQuotePage extends StatelessWidget {
  final Character character;
  const CharactersQuotePage({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        forceMaterialTransparency: true,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 30,
          );
        },
        itemBuilder: (context, index) {
          final quote = character.quotes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: QuoteCartWithOutSubtitle(
              title: quote,
            ),
          );
        },
        itemCount: character.quotes.length,
      ),
    );
  }
}
