import 'package:bloc/bloc.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/data/models/quote_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void getRandomQuote() {
    quotesService
        .getRandomQuote()
        .then((value) => homeCubit.emit(HomeSuccessFetch(quotes: [value])));
  }
}
