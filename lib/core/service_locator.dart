import 'package:game_of_thrones_quotes/data/services/quotes_service.dart';
import 'package:game_of_thrones_quotes/presentation/bloc/cubit/home_cubit.dart';

late QuotesService quotesService;
final homeCubit = HomeCubit();
void serviceLocator() {
  quotesService = QuotesService();
}
