import 'package:flutter/material.dart';

import 'authorization/register.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please select the one applicable to you',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(fixedSize: Size(150, 40),backgroundColor: Colors.red),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
                        },
                        child: Text(
                          'Helth Worker',
                        )),
                    SizedBox(width: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(150, 40), backgroundColor: Colors.red),
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Register()));
                        },
                        child: Text(
                          'Donor',
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
