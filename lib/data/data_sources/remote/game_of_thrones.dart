import 'package:game_of_thrones_quotes/config/apis.dart';
import 'package:game_of_thrones_quotes/config/houses.dart';
import 'package:game_of_thrones_quotes/data/models/character_model.dart';
import 'package:game_of_thrones_quotes/data/models/house_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/quote_model.dart';
part 'game_of_thrones.g.dart';

@RestApi(
  baseUrl: Apis.baseUrl,
)
abstract class QuoteApi {
  factory QuoteApi(Dio dio, {String baseUrl}) = _QuoteApi;

  @GET(Apis.randomQuote)
  Future<Quote> getRandom();

  @GET(Apis.randomQuote)
  Future<List<Quote>> getRandomCount(int count);

  @GET(Apis.houseDetail)
  Future<List<House>> getHouse(Houses house);

  @GET(Apis.character)
  Future<List<Character>> getCharacter(String slug);
}
