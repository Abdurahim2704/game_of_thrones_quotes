part of 'home_cubit.dart';

@immutable
sealed class HomeState {
  final List<Quote> quotes;
  const HomeState({required this.quotes});
}

final class HomeInitial extends HomeState {
  HomeInitial() : super(quotes: []);
}

final class HomeSuccessFetch extends HomeState {
  const HomeSuccessFetch({required super.quotes});
}
