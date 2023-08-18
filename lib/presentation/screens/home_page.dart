import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/data/models/quote_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<Quote> quote = repository.getRandomQuote();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200,width: MediaQuery.of(context).size.width,
          child: FutureBuilder<Quote>(
            future: quote,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListTile(
                  title: Text(snapshot.data!.sentence),
                  subtitle: Align(alignment: Alignment.topRight, child: Text(snapshot.data!.character.name)),
                );
              }
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          ),),
          const SizedBox(height: 20,),
          TextButton(onPressed: () {
            quote = repository.getRandomQuote();
            setState(() {});
          }, child: Text("Get Random Quote"))
        ],
      ),
    );
  }
}
