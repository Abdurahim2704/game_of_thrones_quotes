import 'package:game_of_thrones_quotes/config/houses.dart';
import 'package:game_of_thrones_quotes/data/data_sources/remote/game_of_thrones.dart';
import 'package:dio/dio.dart';
import 'package:game_of_thrones_quotes/data/models/character_model.dart';
import 'package:game_of_thrones_quotes/data/models/house_model.dart';

import '../models/quote_model.dart';

class QuotesService {
  final api = QuoteApi(Dio());

  Future<Quote> getRandomQuote() {
    return api.getRandom();
  }

  Future<List<Quote>> getRandomList() {
    return api.getRandomCount(10);
  }

  Future<House> getHouse(Houses house) {
    return api.getHouse(house).then((value) => value.first);
  }

  Future<Character> getCharacter(String slug) {
    return api.getCharacter(slug).then((value) => value.first);
  }
}
