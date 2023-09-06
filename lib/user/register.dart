import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/user/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register',style: TextStyle(fontSize: 15),),
        backgroundColor: Colors.greenAccent,
      ),

      body: SingleChildScrollView(
        child: Column(

          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Register Here!!!"),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("name "),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.details),
                      label: Text("place "),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text(" address"),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      label: Text("email "),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      label: Text("contact "),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("username "),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      label: Text("password "),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));

            },
              child: Text("Signup",style: TextStyle(
                  fontSize: 18,color: Colors.greenAccent
              )),),
    const SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text("Already have an account?",style: TextStyle(fontSize: 15),),TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
    }, child: const Text("Login",style: TextStyle(fontSize: 15,color: Colors.greenAccent,fontWeight: FontWeight.bold),))

    ],

    ),

          ],
        ),
      ),
    );
  }
}
