import 'package:bmi_app/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF111328),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF111328),
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
      ),
      home: const BmiScreen(),
    );
  }
}
