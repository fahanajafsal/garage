import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/user/login.dart';

import 'carbrands.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/16850.jpg',
            height: 300,
            width:350,),
          SizedBox(height: 40,),
          Text("Just select your car"),
          SizedBox(height: 70,),
          ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>CarBrands(),));
          },
            child: Text("Select your car"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 70,vertical:10)
            ),
          ),SizedBox(height: 10),Text("Or"),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },
            child: const Text('Login',style: TextStyle(fontSize: 12)),),


        ],
        mainAxisAlignment: MainAxisAlignment.center,)

);




  }
}

