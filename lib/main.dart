import 'package:flutter/material.dart';
import 'package:formwidget/form_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Form Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routes: (context) => const HomeScreen(),
        FormScreen.routes: (context) => const FormScreen(),
      },
    );
  }
}
