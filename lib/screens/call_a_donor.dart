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
      body: Column(
        children: [
          //call_listtile is a created widget
          call_listtile(
            donorName: 'Donor Name 1',
          ),
        ],
      ),
    );
  }
}
