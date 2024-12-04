import 'package:flutter/material.dart';
import 'package:learning_flutter_4cs1/displays/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white, size: 35),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
