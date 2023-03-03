import 'package:blood_donation/screens/authorization/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const.dart';
import '../optionpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 40,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Please register below'),
                SizedBox(
                  height: 20,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Name')),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  decoration: InputDecoration(
                      label: Text('Email'), border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                ),
                SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Confirm Password')),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OptionPage()));
                            },
                            child: Text('Sign Up')))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Allready have an acount ? '),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));
                      },
                        child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
