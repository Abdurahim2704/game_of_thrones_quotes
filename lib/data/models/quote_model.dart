import 'package:game_of_thrones_quotes/domain/entities/quote.dart';

import 'character_model.dart';

class Quote extends QuoteEntity {
  Quote({required super.sentence, required super.character});

  factory Quote.fromJson(Map<String, Object?> json) {
    final content = json["sentence"] as String;
    final author = Character.fromJson(json["character"] as Map<String, Object?>);
    return Quote(sentence: content, character: author);
  }
}