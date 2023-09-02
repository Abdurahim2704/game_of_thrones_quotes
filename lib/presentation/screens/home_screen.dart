import 'package:flutter/material.dart';
import 'package:game_of_thrones_quotes/presentation/screens/houses_display_screen.dart';
import 'package:game_of_thrones_quotes/presentation/screens/random_quotes_screen.dart';
import 'package:game_of_thrones_quotes/presentation/views/menu_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome to Game of Thrones",
        ),
        forceMaterialTransparency: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MenuButton(
              title: "Characters",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const RandomQuotesPage())),
            ),
            MenuButton(
              title: "Houses",
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HousesPage())),
            ),
            MenuButton(
              title: "Random Quote",
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const RandomQuotesPage())),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey,
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Color.fromARGB(255, 126, 110, 110),
      //         ),
      //         label: "Salom"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Salom"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Salom"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Salom"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Salom"),
      //   ],
      // ),
    );
  }
}
