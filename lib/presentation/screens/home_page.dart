import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/presentation/bloc/cubit/home_cubit.dart';
import 'package:game_of_thrones_quotes/presentation/views/quote_cart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    homeCubit.getRandomQuote();
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
          child: StreamBuilder<HomeState>(
              stream: homeCubit.stream,
              initialData: HomeInitial(),
              builder: (context, snapshot) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    if (snapshot.hasData) {
                      return QuoteCart(
                        title: homeCubit.state.quotes.first.sentence,
                        subtitle: homeCubit.state.quotes.first.character.name,
                      );
                    }
                    return const CircularProgressIndicator.adaptive();
                  },
                  itemCount: 1,
                );
              }),
        ),
      ),
    );
  }
}
