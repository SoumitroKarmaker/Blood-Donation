import 'package:flutter/material.dart';
class Donor_list_button extends StatelessWidget {
  const Donor_list_button({
    super.key,
    required this.tabpreshed,
    required this.donor_name,
    required this.blood_group,
    required this.mobile_number,
    required this.address,
    required this.more_button,
  });

  final tabpreshed;
  final more_button;
  final String donor_name;
  final String blood_group;
  final String mobile_number;
  final String address;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tabpreshed,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(2, 5),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.more_vert,
                    size: 25,
                  ),
                ],
              ),
              title: Text(donor_name,
                style: TextStyle(
                fontSize: 20,
              ),),
              subtitle: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Blood Group',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(blood_group,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Contact'),
                          Text(mobile_number,style: TextStyle(
                              fontSize: 16, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(address,
                            style: TextStyle(
                                fontSize: 16, color: Colors.black),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}