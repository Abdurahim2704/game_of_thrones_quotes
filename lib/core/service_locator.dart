
import 'package:game_of_thrones_quotes/data/services/quotes_service.dart';

late QuotesService repository;
void serviceLocator() {
  repository = QuotesService();
}