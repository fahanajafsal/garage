import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/user/selectoil.dart';

class Cars extends StatefulWidget {
  const Cars({Key? key}) : super(key: key);

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  // List<String> images = [
  //   'images/fortuner.jpg',
  //   'images/innova.jpg',
  //   'images/corolla.jpg',
  //   'images/yaris.jpg',
  // ];
  //
  // List<String> names = ['fortuner', 'innova', 'corolla', 'yaris'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select your car',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body:Row(
        children: [
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectOil(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/fortuner.jpg',
                    width: 70,
                    height: 60,
                  ),
                  Text(
                    'Fortuner',
                    style: TextStyle(
                      fontSize: 7,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),






          SizedBox(width: 4,),
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectOil(),
                  ),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/innova.jpg',
                    width: 70,
                    height: 60,
                  ),
                  Text(
                    'Innova',
                    style: TextStyle(
                      fontSize: 6, // Adjust the font size
                      color: Colors.black, // Customize text color
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 4,),
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SelectOil(),
                  ),
                );
              },// Customize the color and other properties
              child: Column(
                children: [
                  Image.asset(
                    'images/corolla.jpg',
                    width: 70, // Adjust the width of the image
                    height: 60, // Adjust the height of the image
                  ),
                  Text(
                    'corolla',
                    style: TextStyle(
                      fontSize: 7, // Adjust the font size
                      color: Colors.black, // Customize text color
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 4,),
          Container(
            width: 80,
            height: 80,
            color: Colors.white,
            child: GestureDetector(
              onTap: () {

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Cars(),
                  ),
                );
              },// Customize the color and other properties
              child: Column(
                children: [
                  Image.asset(
                    'images/yaris.jpg',
                    width: 70, // Adjust the width of the image
                    height: 60, // Adjust the height of the image
                  ),
                  Text(
                    'yaris',
                    style: TextStyle(
                      fontSize: 7, // Adjust the font size
                      color: Colors.black, // Customize text color
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),







    );
  }
}