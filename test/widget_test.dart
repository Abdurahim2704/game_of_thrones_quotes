import 'package:game_of_thrones_quotes/data/data_sources/remote/game_of_thrones.dart';
import 'package:game_of_thrones_quotes/data/models/quote_model.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart';

void main() {
  test("Get Random Quote", () async {
    final Quote responce = await QuoteApi(Dio()).getRandom();
    print(responce.sentence);
    print(responce.character.name);
    expect(responce, const TypeMatcher<Quote>());
  });
}