import 'package:flutter/material.dart';
import 'package:shoe_shop/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'shoe shop',
      home:HomePage(),
    );
  }
}