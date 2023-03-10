import 'package:blood_donation/const.dart';
import 'package:blood_donation/screens/req_for_donation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';

import 'call_a_donor.dart';
import 'donors_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.red,
                  child: Lottie.asset('assects/animation/home.json',
                      fit: BoxFit.fill),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CallADonor()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: gray.withOpacity(.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(3, 7),
                            )
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2.8,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Call a Donor',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ReqForDonation()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: gray.withOpacity(.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(3, 7),
                            )
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2.8,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.perm_contact_calendar,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Request for a donation',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('Message a donor');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: gray.withOpacity(.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(3, 7),
                            )
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2.8,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Message a Donor',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DonorList()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: gray.withOpacity(.5),
                              spreadRadius: 3,
                              blurRadius: 7,
                              offset: Offset(3, 7),
                            )
                          ],
                        ),
                        width: MediaQuery.of(context).size.width / 2.8,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.perm_contact_calendar,
                                color: Colors.red,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Donor\'s List',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
