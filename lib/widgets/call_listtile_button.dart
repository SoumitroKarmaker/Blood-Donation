import 'package:flutter/material.dart';

class call_listtile extends StatelessWidget {
   call_listtile({
    super.key,
    required this.donorName,
  });
  final String donorName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(donorName),
        subtitle: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: (){},
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