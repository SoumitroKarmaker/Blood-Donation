import 'package:flutter/material.dart';

class DonorList extends StatelessWidget {
  const DonorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor\'s List'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Donor Name'),
            subtitle: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
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
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      child: Text('Message')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
