sealed class Apis {
  static const baseUrl = "https://api.gameofthronesquotes.xyz/v1";
  static const randomQuote = "/random";
  static const allHouses = "/houses";
  static const allCharacters = "/characters";
  static const String houseDetail = "/house";
  static String quoteFromCharacter(String character) => "/author/$character";
  static const String character = "character";
}
