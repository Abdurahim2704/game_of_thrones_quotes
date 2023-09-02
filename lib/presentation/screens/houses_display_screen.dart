import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/config/houses.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/presentation/screens/house_members_page.dart';
import 'package:game_of_thrones_quotes/presentation/views/house_cart_widget.dart';

class HousesPage extends StatelessWidget {
  const HousesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        final house = Houses.values[index];
        return Padding(
            padding: const EdgeInsets.all(10),
            child: HouseCart(
                name: house.name,
                onTap: () {
                  quotesService.getHouse(house).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MembersPage(house: value),
                          ),
                        ),
                      );
                },
                image: house.image));
      },
      itemCount: Houses.values.length,
    ));
  }
}
