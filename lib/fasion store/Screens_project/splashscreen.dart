import 'dart:async';
import 'package:fashion_store/screens/splashscreen2.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() =>
      _SplashPageState(); //create and initial state for the screen
}

class _SplashPageState extends State<SplashPage> {
  // initial state of SplashPage
  // there are two functionalities in state class
  // initState(){} and setState(){}
  // initState(){} - what will happen when the app or screen is loaded initially
  // setState(){}  - what change will occur on a widget or screen

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => const SplashScreen2()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(
          children: [
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80, top: 380),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      width: 60,
                      height: 60,
                      child: const Center(child: Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text("f", style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,),),
                      )),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 380,left: 10),
                  child: Text("fashion",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 375),
                  child: Text(".",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:Colors.brown),),
                ),
              ],
            ),
          ],
        )
    );
  }
}
