import 'package:blood_donation/const.dart';
import 'package:flutter/material.dart';

import 'authorization/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  GoToHome()async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GoToHome();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assects/images/splashscreen.png'),
            SizedBox(height: 15,),
            Text('Blood Donation',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: textColor),)
          ],
        ),
      ),
    );
  }
}
