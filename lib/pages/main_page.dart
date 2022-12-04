import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/pages/login_page.dart';

class MainPage extends StatefulWidget {
    static String id = "main_page";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), 
      () => Navigator.pushReplacementNamed(context, LoginPage.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.orange,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Fast \n Food",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubikMicrobe(
                      textStyle: const TextStyle(
                        fontSize: 100,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  Image.asset(
                    "assets/image/hamburger.png",
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ]
      ),  
      ),
    );
  }
}