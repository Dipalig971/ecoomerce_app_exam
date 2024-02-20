import 'package:flutter/material.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffE4DCD7),
                borderRadius: BorderRadius.vertical(bottom:Radius.circular(30))
              ),
              child: Image.asset('asset/img/women.jpg',fit: BoxFit.contain,),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                  child: Text('Kenzo Embroiderd',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SizedBox(width: 90,),
                Icon(Icons.star),
                Text(' 4.8',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
