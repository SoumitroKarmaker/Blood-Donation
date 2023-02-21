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
          Padding(
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
                  title: Text(
                    'Donor Name',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
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
                              Text(
                                'AB+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.red),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Contact'),
                              Text(
                                '41561423454',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              )
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
                              Text(
                                'Lorem Ipsum is simply dummy text',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
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
          Padding(
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
                  title: Text(
                    'Donor Name',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
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
                              Text(
                                'AB+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.red),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Contact'),
                              Text(
                                '41561423454',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              )
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
                              Text(
                                'Lorem Ipsum is simply dummy text',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
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
        ],
      ),
    );
  }
}
