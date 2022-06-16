// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

// text controllers
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmpasswordconrotroller = TextEditingController();

  Future signUp() async{
   if(passwordConfirmed()){
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailcontroller.text.trim(),
       password: _passwordcontroller.text.trim(),
       );
   }
  }
  bool passwordConfirmed(){
    if(_passwordcontroller.text.trim()==_confirmpasswordconrotroller.text.trim()){
      return true;
    }else{
      return false;
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirmpasswordconrotroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.accessibility_new_rounded,
                size: 100),
               SizedBox(height: 25),
              //greeting
              Text('Hello  There',
                  style: TextStyle(fontWeight: FontWeight.bold, 
                  fontSize: 24)),
                  SizedBox(height: 10),
                  Text('Register Below with your details',
                  style: TextStyle( 
                  fontSize: 18)),
          
                   SizedBox(height: 20),
              //email field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField( 
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email")),
                  ),
                ),
              ),
              //separating
              SizedBox(height: 20),
              //password field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container( decoration: BoxDecoration(color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    controller: _passwordcontroller,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password"
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
              //confirm password field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container( decoration: BoxDecoration(color: Colors.grey[200],
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    controller: _confirmpasswordconrotroller,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Confirm Password"
                    ),
                  ),
                ),
              ),
            ), 
          
            //separating
            SizedBox(height: 20),
              //login button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: signUp,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Text("Sign-Up",
                  style: TextStyle(color: Colors.white,fontSize: 15),)),
                ),
              ),
            ),
              //not a member register now
              SizedBox(height: 20,),
              // Not a member register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an Account!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: widget.showLoginPage,
                    child: Text("  Login Now",
                    style: TextStyle(color: Colors.deepPurple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}