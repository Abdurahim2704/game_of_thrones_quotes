
import 'package:flutter/cupertino.dart';
import 'package:game_of_thrones_quotes/app.dart';
import 'package:game_of_thrones_quotes/core/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const MyApp());
}

