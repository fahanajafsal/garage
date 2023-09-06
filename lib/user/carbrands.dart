import 'package:flutter/material.dart';
import 'package:project/user/Cars.dart';

class CarBrands extends StatefulWidget {
  const CarBrands({Key? key}) : super(key: key);

  @override
  State<CarBrands> createState() => _CarBrandsState();
}

class _CarBrandsState extends State<CarBrands> {
  // List<String> images = [
  //   'images/toyota.jpg',
  //   'images/BMW.jpg',
  //   'images/ford.png',
  //   'images/ferrari.png',
  //   'images/audi.png',
  //   'images/lexus.jpg'
  // ];
  //
  // List<String> names = ['Toyota', 'BMW', 'Ford', 'Ferrari', 'Audi', 'Lexus'];

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
      body: Row(
        children: [
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
              },
              child: Column(
                children: [
                  Image.asset(
                    'images/toyota.jpg',
                    width: 70,
                    height: 60,
                  ),
                  Text(
                    'Toyota',
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
                    builder: (context) => Cars(),
                  ),
                );
              },
            child: Column(
              children: [
                Image.asset(
                  'images/BMW.jpg',
                  width: 70,
                  height: 60,
                ),
                Text(
                  'BMW',
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
                    builder: (context) => Cars(),
                  ),
                );
              },// Customize the color and other properties
            child: Column(
              children: [
                Image.asset(
                  'images/ford.png',
                  width: 70, // Adjust the width of the image
                  height: 60, // Adjust the height of the image
                ),
                Text(
                  'ford',
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
                  'images/ferrari.png',
                  width: 70, // Adjust the width of the image
                  height: 60, // Adjust the height of the image
                ),
                Text(
                  'ferrari',
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