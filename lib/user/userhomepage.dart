import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project/user/login.dart';
import 'package:project/user/periodicservice.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(
                        //   'images/CN.jpg',
                        //   height: 100,
                        //   width: 100,
                        // ),
                        SizedBox(width: 20), // Use SizedBox to control spacing


                        Text(
                          "Access all the features and \n help us serve you better!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),








            SizedBox(height: 10,),
        Align(
            alignment: Alignment.centerLeft,
     child:  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text("Scheduled Services",style: TextStyle(fontSize: 10,),),
     ),



        ),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PeriodicService(),
                        ),
                      );
                    },// Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/periodic.png',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'periodic services',
                        style: TextStyle(
                          fontSize: 7, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),
                ),
                SizedBox(width: 30,),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white, // Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ac.jpg',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'AC service & Repair',
                        style: TextStyle(
                          fontSize: 6, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white, // Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/tyre.jpg',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'Tyres & Wheelcare',
                        style: TextStyle(
                          fontSize: 7, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

    SizedBox(height: 10,),


            Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white, // Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/periodic.png',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'Denting & painting',
                        style: TextStyle(
                          fontSize: 7, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white, // Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ac.jpg',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'Car spa & cleaning',
                        style: TextStyle(
                          fontSize: 6, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white, // Customize the color and other properties
                  child: Column(
                    children: [
                      Image.asset(
                        'images/tyre.jpg',
                        width: 70, // Adjust the width of the image
                        height: 60, // Adjust the height of the image
                      ),
                      Text(
                        'Batteries',
                        style: TextStyle(
                          fontSize: 7, // Adjust the font size
                          color: Colors.black, // Customize text color
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: 20,),

            CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                // Add more options as needed
              ),
              items: ["images/slider2.jpg", "images/slider.jpg"].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.black, // Customize background color
                        borderRadius: BorderRadius.circular(10.0), // Add rounded corners
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // Add shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Image.asset(
                          "$i",
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            )

]
    )

    ),


      appBar: AppBar(
    title: Text(" ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15
    ),
    ),
    toolbarHeight: 30,
    backgroundColor: Colors.red
    ),
    backgroundColor: Colors.white,

    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    UserAccountsDrawerHeader(
    accountName: Text("FAHANA"),
    accountEmail: Text("Fahana@gmail.com"),
    currentAccountPicture: CircleAvatar(
    backgroundColor: Colors.orange,
    child: Text(
    "L",
    style: TextStyle(fontSize: 40.0),
    ),
    ),
    ),

    ListTile(
    leading: Icon(
    Icons.home,
    ),
    title: const Text('Home'),
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHome()));
    },
    ),
    ListTile(
    leading: Icon(
    Icons.person,
    ),
    title: const Text('Profile'),
    onTap: () {
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
    },
    ),
    ListTile(
    leading: Icon(
    Icons.logout,
    ),
    title: const Text('Logout'),
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    },
    ),
      ListTile(
        leading: Icon(
          Icons.feedback,
        ),
        title: const Text('feedback'),
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
        },
      ),
    ],
    ),
    ),


    );
  }
}
