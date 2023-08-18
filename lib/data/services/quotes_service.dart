import 'package:game_of_thrones_quotes/data/data_sources/remote/game_of_thrones.dart';
import 'package:dio/dio.dart';

import '../models/quote_model.dart';
class QuotesService {
  final api = QuoteApi(Dio());


  Future<Quote> getRandomQuote() {
    return api.getRandom();
  }
}