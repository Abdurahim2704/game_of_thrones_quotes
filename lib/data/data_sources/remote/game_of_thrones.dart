import 'package:game_of_thrones_quotes/config/apis.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../../models/quote_model.dart';
part 'game_of_thrones.g.dart';

@RestApi(baseUrl: Apis.baseUrl,)
abstract class QuoteApi {

  factory QuoteApi(Dio dio, {String baseUrl}) = _QuoteApi;

  @GET(Apis.randomQuote)
  Future<Quote> getRandom();
}