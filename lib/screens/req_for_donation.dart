import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.red)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                ),
              ),
              SizedBox(
                height: 15,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Time Needed'),
              ),
              SizedBox(
                height: 15,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Institution Name'),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){},child: Text('Request'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
