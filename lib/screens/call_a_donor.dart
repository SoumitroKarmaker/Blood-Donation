import 'package:flutter/material.dart';

import '../widgets/call_listtile_button.dart';

class CallADonor extends StatefulWidget {
  const CallADonor({Key? key}) : super(key: key);

  @override
  State<CallADonor> createState() => _CallADonorState();
}

class _CallADonorState extends State<CallADonor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Call'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //call_listtile is a created widget
            call_listtile(
              donorName: 'Donor Name 1',
              onPresscall: () {
                print('Call Preshed');
              },
              onpressmessage: () {
                print('Message Preshed');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
            call_listtile(
              donorName: 'Donor Name 2',
              onPresscall: () {
                print('Call Preshed 2');
              },
              onpressmessage: () {
                print('Message Preshed 2');
              },
            ),
          ],
        ),
      ),
    );
  }
}
