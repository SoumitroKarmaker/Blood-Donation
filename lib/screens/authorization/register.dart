import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../home.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 130,),
                Text(
                  'Blood Donate',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Title'),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Proffission'),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Location'),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Institution Name'),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()),);
                        Home().launch(context,isNewTask: true);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 16),
                      )),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
