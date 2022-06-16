// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//getting current user
final user=FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed In as:' + user!.email!,style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 12,
              fontWeight: FontWeight.bold),),
              MaterialButton(onPressed: (() {
                FirebaseAuth.instance.signOut();
              }),
              color: Colors.deepPurple,
              child: Text("Sign Out",style: TextStyle(color: Colors.white,
              fontSize: 10),),
              )
          ],
        )),
    );
  }
}