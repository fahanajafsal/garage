import 'package:flutter/material.dart';
import 'package:project/user/userhomepage.dart';

class SelectOil extends StatefulWidget {
  const SelectOil({Key? key}) : super(key: key);

  @override
  State<SelectOil> createState() => _SelectOilState();
}

class _SelectOilState extends State<SelectOil> {
  String selectedFuelType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select your fuel type"),
            ),
          ),
          Row(
            children: [
              fuelContainer(
                'Petrol',
                'images/petrol.jpg',
              ),
              SizedBox(width: 4,),
              fuelContainer(
                'Diesel',
                'images/diesal.png',
              ),
              SizedBox(width: 4,),
              fuelContainer(
                'CNG',
                'images/cng.png',
              ),
            ],
          ),
          SizedBox(height: 60,),
          TextFormField(
            decoration: InputDecoration(

              label: Text("select city "),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.purple),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserHome(),
                ),
              );
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0), // Adjust the border radius here
                ),
              ),

            ),
              child: Text("Submit"),
          )
        ],
      ),
    );
  }

  Widget fuelContainer(String fuelType, String imagePath) {
    bool isSelected = selectedFuelType == fuelType;

    return GestureDetector(
      onTap: () {
        // Toggle the selection when a container is tapped
        setState(() {
          selectedFuelType = isSelected ? '' : fuelType;
        });
      },
      child: Container(
        width: 80,
        height: 80,
        color: isSelected ? Colors.redAccent : Colors.white,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 70,
              height: 60,
            ),
            Text(
              fuelType,
              style: TextStyle(
                fontSize: 7,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
