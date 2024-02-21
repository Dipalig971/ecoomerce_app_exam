import 'package:ecoomerce_app_exam/view/screen/cart.dart';
import 'package:ecoomerce_app_exam/view/screen/productscreen.dart';
import 'package:flutter/material.dart';
import 'view/screen/homescreen.dart';

void main() {
  runApp(const Ecommerce_Application());
}

class Ecommerce_Application extends StatelessWidget {
  const Ecommerce_Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context) => Homescreen(),
        '/product':(context) => Productscreen(),
        '/cart':(context) => Cartscreen(),
    },
    );
  }
}
