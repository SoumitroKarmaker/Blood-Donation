import 'package:flutter/material.dart';

class ReqForDonation extends StatefulWidget {
  const ReqForDonation({Key? key}) : super(key: key);

  @override
  State<ReqForDonation> createState() => _ReqForDonationState();
}

class _ReqForDonationState extends State<ReqForDonation> {
  String? _selectedItem;

  List<String> _items = [
    'A+',
    'A-',
    'AB+',
    'AB-',
    'B+',
    'B-',
    'O+',
    'O-',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request for Blood'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Text(
              'data',
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.red
                )
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text('Select Blood Group'),
                value: _selectedItem,
                items: _items.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (selectedItem) {
                  setState(() {
                    _selectedItem = selectedItem;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
