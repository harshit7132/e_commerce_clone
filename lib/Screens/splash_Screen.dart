import 'dart:async';

import 'package:e_commerce_clone/Screens/logIn_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class splash_Screen extends StatefulWidget {
  const splash_Screen({super.key});

  @override
  State<splash_Screen> createState() => _splash_ScreenState();
}

class _splash_ScreenState extends State<splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => logIn_Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network(
              'https://lottie.host/0d67a0ca-aa45-49f1-802a-b903af79cb71/I0hIE4IkqE.json',
              height: 300,
              width: 400),
          Text(
              textAlign: TextAlign.center,
              'Thanks for being a part of our vibrant shopping community! Your next great find is just a loading screen away. \n\n   Happy shopping! 🛍️✨',
              style: GoogleFonts.abel(fontSize: 20)),
        ],
      ),
    );
  }
}
