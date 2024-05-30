import 'package:flutter/material.dart';

import 'package:hunting_words/pages/home.dart';
import 'package:hunting_words/pages/play.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Solution',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.amberAccent),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(title: 'Desenvolvimento Cross Platform'),
        '/play': (context) => PlayPage()
      },
    );
  }
}
