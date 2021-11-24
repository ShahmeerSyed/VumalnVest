import 'package:flutter/material.dart';
import 'package:sliderwithcarousel/carouselscreen.dart';
import 'package:splashscreen/splashscreen.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          child: Center(
            child : SplashScreen(
                seconds: 7,
                navigateAfterSeconds: carouselscreen(),
                image: new Image.asset('assets/images/logo.png'),
                backgroundColor: Colors.blueAccent,
                useLoader: false,
                photoSize: 150.0,

            )
          )
        )
    );
  }
}
