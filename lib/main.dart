import 'package:activity3/loginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter login UI',
        theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 9, 26, 47)),
        home: LoginScreen(),
      );
  }
}

class Background {
}


