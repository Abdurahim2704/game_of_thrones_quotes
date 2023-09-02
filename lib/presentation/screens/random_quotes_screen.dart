import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/presentation/bloc/cubit/home_cubit.dart';
import 'package:game_of_thrones_quotes/presentation/views/quote_cart_widget.dart';

class RandomQuotesPage extends StatefulWidget {
  const RandomQuotesPage({super.key});

  @override
  State<RandomQuotesPage> createState() => _RandomQuotesPageState();
}

class _RandomQuotesPageState extends State<RandomQuotesPage> {
  @override
  void initState() {
    homeCubit.getRandomQuote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      strokeWidth: 3,
      displacement: 0,
      onRefresh: () async {
        homeCubit.getRandomQuote();
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<HomeState>(
                  stream: homeCubit.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return QuoteCart(
                          title: homeCubit.state.quotes.first.sentence,
                          subtitle:
                              homeCubit.state.quotes.first.character.name);
                    }
                    return const CircularProgressIndicator.adaptive();
                  }),
              ElevatedButton(
                  onPressed: homeCubit.getRandomQuote,
                  child: const Text("Refresh")),
            ],
          ),
        ),
      ),
    );
  }
}
