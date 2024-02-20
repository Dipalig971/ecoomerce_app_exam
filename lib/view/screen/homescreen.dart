import 'package:ecoomerce_app_exam/utills/name.dart';
import 'package:ecoomerce_app_exam/utills/productlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        appBar: AppBar(
          backgroundColor: Color(0xffF8F8F8),
          title: Text(
            'Search',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: 60,
                    width: 290,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.5,
                              spreadRadius: 1)
                        ]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.grey,
                        ),
                        Text(
                          ' Search...',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 69,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.tune,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Find Your Style',
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      Boxlist.length,
                      (index) =>
                          box(Boxlist[index]['name'], Boxlist[index]['img'])),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    height: 240,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    height: 235,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 230,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xffF7E7DA),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 170, top: 10),
                          child: Text(
                            'new Arrivals',
                            style: GoogleFonts.dancingScript(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 170),
                          child: Text(
                            'Just For You',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          child: Text('50%\n off',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 25),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom:10),
                    child: Text('Most Popular',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('See all',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.w500),),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: List.generate(productlist.length, (index) => InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/product');
                      },
                        child: product1(productlist[index]['name'], productlist[index]['img'])))
                  ),
                  Column(
                    children: List.generate(productlist1.length, (index) => InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/product',);
                        },
                        child: product2(productlist1[index]['name'], productlist1[index]['img'])))
                  ),
                ]
              )
          ]
        ),
        )
         ),
    );
  }
}

Widget box(String name, String img) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    height: 150,
    width: 130,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Column(children: [
      SizedBox(
        height: 10,
      ),
      CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(img),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        name,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
      ),
    ]),
  );
}
Widget product1(String name , String img )
{
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: Container(
      height: 260,
      width: 180,
      decoration: BoxDecoration(
          color: Color(0xffFFEBDF),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:60),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xffFFEBDF),
              backgroundImage: AssetImage(img),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Text('\$90.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          )
        ],
      ),
    ),
  );
}

Widget product2(String name , String img)
{
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Container(
      height: 260,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xffFFEBDF),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:60),
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Color(0xffFFEBDF),
              backgroundImage: AssetImage(img),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20,),
            child: Text('\$60.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
          )
        ],
      ),
    ),
  );
}



