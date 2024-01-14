import 'package:flutter/material.dart';
import 'package:shoe_shop/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(254, 206, 1, 1)),
        inputDecorationTheme:const  InputDecorationTheme(
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          hintStyle: TextStyle(fontWeight: FontWeight.bold,)
        )
      ),
      title: 'shoe shop',
      home: const HomePage(),
    );
  }
}
class PaymentPage extends StatelessWidget{
  const PaymentPage ({super. key});
@override
 
Widget build(BuildContext ctx ) {
return Scaffold ();
  
}

}
