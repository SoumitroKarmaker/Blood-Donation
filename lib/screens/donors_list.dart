import 'package:flutter/material.dart';

import '../widgets/donor_list_button.dart';

class DonorList extends StatelessWidget {
  const DonorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor\'s List'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                print('search preshed');
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                print('filter preshed');
              },
              icon: Icon(Icons.filter_alt_outlined))
        ],
      ),
      body: Column(
        children: [
          //
          Donor_list_button(
            tabpreshed: () {
              print('go to new screen');
            },
            donor_name: 'Hosain',
            blood_group: 'A+',
            mobile_number: '0562126',
            address: 'Dhaka, Bangladesh',
            more_button: () {
              print('more button preshed');
            },
          ),
          Donor_list_button(
              tabpreshed: () {},
              donor_name: 'kader',
              blood_group: 'AB+',
              mobile_number: '046457851',
              address: 'Sylhet',
              more_button: () {})
        ],
      ),
    );
  }
}
