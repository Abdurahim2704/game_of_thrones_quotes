import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';
import 'package:game_of_thrones_quotes/data/models/house_model.dart';
import 'package:game_of_thrones_quotes/presentation/screens/characters_quotes.dart';
import 'package:game_of_thrones_quotes/presentation/views/menu_button_widget.dart';

class MembersPage extends StatelessWidget {
  final House house;
  const MembersPage({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("House members")),
      body: Center(
        child: ListView.separated(
          physics: const PageScrollPhysics(),
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 30,
            );
          },
          itemBuilder: (context, index) {
            final member = house.members[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MenuButton(
                title: member["name"],
                onTap: () {
                  quotesService.getCharacter(member["slug"]).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                CharactersQuotePage(character: value),
                          ),
                        ),
                      );
                },
              ),
            );
          },
          itemCount: house.members.length,
        ),
      ),
    );
  }
}
