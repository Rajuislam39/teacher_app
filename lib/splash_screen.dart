import 'dart:async';

import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb7c8c3),
     body: Center(
       child: SizedBox(
         width: 200,height: 200,child: Card(
         color: Colors.white,
           child: Center(child: Text("Teacher app",style: TextStyle(color: Color(0xffFF5733),fontSize: 25,fontWeight: FontWeight.bold),))),
       ),
     ),
    );
  }
}
