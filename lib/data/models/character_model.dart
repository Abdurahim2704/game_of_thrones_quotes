import '../../domain/entities/character.dart';

class Character extends CharacterEntity {
  Character({required super.name, required super.slug, super.quotes});

  factory Character.fromJson(Map<String, Object?> json) {
    final name = json["name"] as String;
    final slug = json["slug"] as String;
    final quotesJson = (json["quotes"] ?? <String>[])  as List<String>;
    return Character(name: name, slug: slug, quotes: quotesJson);
  }

}