import 'package:flutter/material.dart';
import 'package:pi_app/pages/Home.dart';
import 'package:pi_app/pages/Login.dart';

void main() {
  runApp(const PiApp());
}

class PiApp extends StatelessWidget {
  const PiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pi App",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login()
      },
    );
  }
}
