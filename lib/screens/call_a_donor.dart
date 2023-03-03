import 'package:flutter/material.dart';

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
          call_listtile(),

        ],
      ),
    );
  }
}

class call_listtile extends StatelessWidget {
  const call_listtile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text('Donor Name'),
        subtitle: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    print('call preshed');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('Call')),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    print('message preshed');
                  },
                  style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: Text('Message')),
            ),
          ],
        ),
      ),
    );
  }
}
