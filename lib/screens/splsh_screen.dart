import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assects/images/splashscreen.png'),
            SizedBox(height: 15,),
            Text('Blood Donation',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.red),)
          ],
        ),
      ),
    );
  }
}
