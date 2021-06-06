import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';


class Buying extends StatefulWidget {

  static const String id = 'buying';

  @override
  _BuyingState createState() => _BuyingState();
}

class _BuyingState extends State<Buying> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert,size: 30,color: Colors.black,),
          SizedBox(width: 20,),
        ],
        title: Text('Details',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: BackButton(onPressed: () {
          Navigator.pushNamed(context, Home.id);
        },),
        elevation: 0,
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 14,),
            Container(
              height: 638,
              width: double.infinity,
              margin: EdgeInsets.only(left: 8,right: 8,bottom: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text('New Air Force',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                  Text('Swoosh Samarkand',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                  SizedBox(height: 30,),
                  Text('The Air Force 1 Low Mini Swoosh',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[500]),),
                  SizedBox(height: 12,),
                  Text('Samarkand is isnpired by one of the best',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[500]),),
                  SizedBox(height: 12,),
                  Text('cities of the planet.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey[500]),),
                  SizedBox(height: 20,),
                  // #image
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/shoes.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 50,),
                      Text('Size',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(width: 30,),
                      Container(
                        height: 30,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10.0,
                              offset: Offset(0.0,10.0),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text('7',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Text("7.5",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      SizedBox(width: 20,),
                      Text("8",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(26, 29, 55, 1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35),bottomLeft: Radius.circular(18),bottomRight: Radius.circular(18)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 30,),
                                Text('Price',style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize: 30),),
                                SizedBox(width: 60,),
                                Text('Reviews',style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize: 15),),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              Icon(Icons.star,color: Colors.yellow,size: 20,),
                              SizedBox(width: 70,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 55),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('\$80',style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 30,),
                                Text('Style Code',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
                                SizedBox(width: 60,),
                                Container(
                                  height: 50,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Text('Buy Now',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('823511-404',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
