import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Foodlich());
}

class Foodlich extends StatelessWidget {
  const Foodlich({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      title: 'Fooder lich',
      theme: theme,
      home: const Home(),
    );
  }
}
