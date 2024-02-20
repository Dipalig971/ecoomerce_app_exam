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
                SizedBox(width: 60,),
                Icon(Icons.star),
                Text(' 4.8',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                Text('(1K Reviews)',style: TextStyle(color: Colors.grey),),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text('Description',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Womens wear is outfits made specifically for and worn by women.'
                      ' Salwar suits, saaris, lehnga etc in Indian tradition and Skirts, shirts, sweaters, trousers'
                      ', coats, chemises, and jeans, etc.'
                      'in western countries are examples of common womens clothing',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text('Size',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                CircleAvatar(
                  radius: 25,
                  child: Text('S',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                  child: Text('M',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: Text('L',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                  child: Text('Xl',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 25,
                  child: Text('Xll',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                  child: Text('Price',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Text('\$60.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(width: 60,),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Add to Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
