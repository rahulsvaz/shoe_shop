import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Center(
          child: Text('Hello',
              style:
                  TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold)),
        )
      ]),
    );
  }
}
