// ignore: import_of_legacy_library_into_null_safe
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_market/pages/second_page.dart';


class Home extends StatefulWidget {

  static const String id = 'home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
        initialPage: 0
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Shoes',style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Color.fromRGBO(26, 29, 55, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.search_rounded),
            onPressed: () {},
          ),
          SizedBox(width: 20,),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu_outlined),
          onPressed: () {},
        ),
      ),
      backgroundColor:Colors.yellow,
      body: Container(
        margin: EdgeInsets.only(left: 3,right: 3,bottom: 4,top: 4),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(26, 29, 55, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(height: 15,),
            // #men #women #kids
            Row(
              children: [
                SizedBox(height: 14,),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 18),
                      height: 40,
                      width: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.yellow,
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text("Men's",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                      height: 40,
                      width: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(26, 29, 55, 1),
                        border: Border.all(width: 2,color: Colors.grey),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text("Women's",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 18),
                      height: 40,
                      width: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(26, 29, 55, 1),
                        border: Border.all(width: 2,color: Colors.grey),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text('Kids',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            // #Main
            Container(
              height: 470,
              width: double.infinity,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    currentIndex = page;
                  });
                },
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('New Air Force',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 20,),
                        // #image
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoes.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),

                        // #price // #buying
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text( "\$80",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                            SizedBox(width: 120,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.yellow,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Buying.id);
                                },
                                child: Center(
                                  child: Text('Buy Now',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('New Air Force',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 20,),
                        // #image
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoes.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),

                        // #price // #buying
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text( "\$80",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                            SizedBox(width: 120,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.yellow,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Buying.id);
                                },
                                child: Center(
                                  child: Text('Buy Now',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30,right: 30),
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Text('New Air Force',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 20,),
                        // #image
                        Container(
                          margin: EdgeInsets.only(left: 20,right: 20),
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/shoes.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),

                        // #price // #buying
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text( "\$80",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                            SizedBox(width: 120,),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.yellow,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, Buying.id);
                                },
                                child: Center(
                                  child: Text('Buy Now',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: false,
        backgroundColor: Colors.white,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home_filled),
            title: Text('Home'),
            activeColor: Colors.deepPurple,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.remove_red_eye),
            title: Text('Looking'),
            activeColor: Colors.deepPurple,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.save_outlined),
            title: Text('Saved'),
            activeColor: Colors.deepPurple,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.location_on_outlined),
            title: Text('Location'),
            activeColor: Colors.deepPurple,
          ),
        ], onItemSelected: (index) => setState((){
        _selectedIndex = index;
      }),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30:6,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for(int i= 0; i<3; i++){
      if(currentIndex == i) {
        indicators.add(_indicator(true));
      }else{
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }

}