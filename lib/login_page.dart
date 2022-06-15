// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
             SizedBox(height: 25),
            //greeting
            Text('Hello Again There',
                style: TextStyle(fontWeight: FontWeight.bold, 
                fontSize: 24)),
                SizedBox(height: 10),
                Text('Welcome back you have been missed!',
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password"
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
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text("Sign-In",
              style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),
          ),
            //not a member register now
            SizedBox(height: 20,),
            // Not a member register
            Text("Do not Have an Account! Register Here",style: TextStyle(color: Colors.deepPurple,fontSize: 12,fontWeight: FontWeight.bold),),
          ]),
        ),
      ),
    );
  }
}
