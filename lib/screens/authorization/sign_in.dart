import 'package:blood_donation/const.dart';
import 'package:blood_donation/screens/authorization/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../optionpage.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150,),
                  Text(
                    'Welcome',
                    style: (TextStyle(
                        fontSize: 40,
                        color: textColor,
                        fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), label: Text('username')),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), label: Text('password')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('forget password preshed');
                        },
                        child: Text(
                          'forget password ?',
                          style: TextStyle(
                              color: seconderyTextColor, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
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
                          child: Text('Log In'),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an acount ? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Text(
                          "Sign Up ",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
