import 'package:flutter/material.dart';
import 'package:project/user/booking.dart';

class DetalPage extends StatefulWidget {
  const DetalPage({Key? key}) : super(key: key);

  @override
  State<DetalPage> createState() => _DetalPageState();
}

class _DetalPageState extends State<DetalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Details',style: TextStyle(fontSize: 12),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BASIC SERVICE',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Price: \$3500',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Service Detail',
              style: TextStyle(
                fontSize: 13,color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            buildPointText('Engine Oil Replacement'),
            buildPointText('Oil filter Replacement'),
            buildPointText('Air Filter Cleaning'),
SizedBox(height: 20,),


ElevatedButton(onPressed: (){


  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Booking(),
    ),
  );
},
    child: Text('BOOK NOW',))
          ],




        ),
      ),
    );
  }

  Widget buildPointText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, size: 20, color: Colors.black),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),





    );
  }
}
