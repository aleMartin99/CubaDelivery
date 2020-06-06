/*import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tu_comida/utils/Exporter.dart';
import 'Home.dart';
import 'Walk.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Screen size;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
       navigateFromSplash();
    });
  }

  @override
  Widget build(BuildContext context) {
     size = Screen(MediaQuery.of(context).size);
    return Scaffold(
        body: Center(
        child: Container(
          width: size.getWidthPx(300),
          height: size.getWidthPx(300),
          child: Image.asset("assets/splash_logo.png")))
    );
  }

  Future navigateFromSplash () async {

    String isOnBoard = await LocalStorage.sharedInstance.readValue(Constants.hasWalked);
      if(isOnBoard ==null || isOnBoard == "0"){
        //Navigate to Walk Screen.
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Walk()));
      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
      }
  }
}*/