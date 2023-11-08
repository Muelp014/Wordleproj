import 'package:flutter/material.dart';

import '../wordle/views/wordle_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Color.fromARGB(255, 0, 0, 0)),
      home: const GameScreen(),
    );
  }
}
