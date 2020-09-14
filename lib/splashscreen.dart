import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  final String title;
  @override
  Splash(this.title);
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


//  final bagcolor = const Color(0xFF192A56);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SplashScreen(
          seconds: 2,
          backgroundColor: Colors.white,
          image: Image.asset('images/logoschool1.png'),
          loaderColor: Colors.white,
          photoSize: 150.0,
          navigateAfterSeconds: LoginPage(''),



        ),
      ),
    );
  }

  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

}