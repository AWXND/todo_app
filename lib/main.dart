import 'package:flutter/material.dart';
import 'package:todo_app/pages/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.yellow,
        ),
      ),

      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
