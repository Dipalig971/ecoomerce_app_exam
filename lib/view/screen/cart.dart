import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Container(
                    height: 110,
                    width:410,
                    decoration: BoxDecoration(
                      color:Colors.redAccent,
                    ),
                  ),
                )
              ],
            )
          ],
        ),

      ),
    );
  }
}
