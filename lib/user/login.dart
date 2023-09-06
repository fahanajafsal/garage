import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/user/register.dart';

import '../chooseregister.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/9045619.jpg',
              height: 300,
              width: 350,),

              Text('Welcome back!!'),
              SizedBox(height: 10,),
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      label: Text("Username "),
                      hintText: "Enter your Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                      ))

              ),
          SizedBox(height: 10,),
          TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  label: Text("password "),
                  hintText: "Enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.purple)

                  ))

          ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
                  child: Text("Login",),
                style: ElevatedButton.styleFrom(
                primary: Colors.green.shade300,

                ),
              ),

              SizedBox(height: 30.0,),
              Row(
                children: [
                  const Text('Does not have an account?',style:TextStyle(fontSize: 12),),

                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseRegister(),));
                  },
                    child: const Text('Register Here',style: TextStyle(fontSize: 12),),
                  ),

                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
