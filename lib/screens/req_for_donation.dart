// import 'package:flutter/material.dart';
//
// class ReqForDonation extends StatefulWidget {
//   const ReqForDonation({Key? key}) : super(key: key);
//
//   @override
//   State<ReqForDonation> createState() => _ReqForDonationState();
// }
//
// class _ReqForDonationState extends State<ReqForDonation> {
//   final items = [
//     'A+',
//     'A-',
//     'B+',
//     'B-',
//   ];
//   String? value;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Request for Blood'),
//         backgroundColor: Colors.red,
//       ),
//       body: Column(
//         children: [
//           Text(
//             'data',
//           ),
//           DropdownButton(
//             value: value,
//               items: items.map(buildManuItem).toList(),
//               onChanged: (value) => this.value = value),
//         ],
//       ),
//     );
//     DropdownMenuItem buildManuItem(String item) => DropdownMenuItem(
//       value: item,
//       child: Text(
//         item,
//       ),
//     );
//   }
// }
