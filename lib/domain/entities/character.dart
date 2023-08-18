class CharacterEntity {
  String? house;
  String name;
  String slug;
  List<String> quotes;

  CharacterEntity({required this.name, required this.slug, this.house, this.quotes = const []});
}