import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/user/register.dart';
import 'package:project/workshop/workshopregister.dart';

class ChooseRegister extends StatefulWidget {
  const ChooseRegister({Key? key}) : super(key: key);

  @override
  State<ChooseRegister> createState() => _ChooseRegisterState();
}

class _ChooseRegisterState extends State<ChooseRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
        height: 400,

        child:Padding(
        padding:const EdgeInsets.all(20),
    child: GridView(

    children: [

    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
    },
    child: Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset("images/user.png",height: 70,),
    Text("User",style: TextStyle(color: Colors.black,fontSize: 20),)
    ],
    ),
    ),
    ),

    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>GarageRegister()));
    },

    child:  Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white,),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset("images/workshop.png",height: 60,),
    Text("Workshops",style: TextStyle(color: Colors.black,fontSize: 17),)
    ],
    ),
    ),
    ),

    ],
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
    )
        )
        )
    );
  }
}