import 'package:game_of_thrones_quotes/domain/entities/character.dart';

class QuoteEntity {
  CharacterEntity character;
  String sentence;

  QuoteEntity({required this.character, required this.sentence});
}