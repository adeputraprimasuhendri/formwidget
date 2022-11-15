import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  String yourname = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Widget'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Your name is $yourname"),
            ),
            TextFormField(
              controller: fullname,
              decoration:
                  const InputDecoration(hintText: 'Please enter your name'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  yourname = fullname.text;
                });
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
