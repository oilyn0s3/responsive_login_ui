import 'package:flutter/material.dart';
import 'components/pallate.dart';
import 'login_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: const Scaffold(
        backgroundColor: Pallete.backgroundColor,
        body: SafeArea(
          child: LoginPage(),
        ),
      ),
    );
  }
}
