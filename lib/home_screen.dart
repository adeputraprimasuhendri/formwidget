import 'package:flutter/material.dart';
import 'package:formwidget/form_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Form Widget'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FormScreen();
            }));
          },
          child: const Text('Go To Form Widget'),
        ),
      ),
    );
  }
}
