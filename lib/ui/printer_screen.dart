// import 'package:flutter/material.dart';

// class PrinterScreen extends StatefulWidget {
//   const PrinterScreen({super.key});

//   @override
//   State<PrinterScreen> createState() => _PrinterScreenState();
// }

// class _PrinterScreenState extends State<PrinterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount:
//                     1, // You can adjust this if you want to display multiple tables
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: Colors.red,
//                     margin: EdgeInsets.all(20),
//                     child: Table(
//                       defaultColumnWidth: FixedColumnWidth(90.0),
//                       defaultVerticalAlignment:
//                           TableCellVerticalAlignment.middle,
//                       border: TableBorder.all(
//                         color: Colors.black,
//                         style: BorderStyle.solid,
//                         width: 2,
//                       ),
//                       children: const [
//                         TableRow(children: [
//                           Column(children: [
//                             Text('Sr No',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             SizedBox(
//                               child: Text('Description',
//                                   style: TextStyle(
//                                       fontSize: 12.0,
//                                       fontWeight: FontWeight.bold)),
//                             )
//                           ]),
//                           Column(children: [
//                             Text('PCS',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             Text('Weight',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             Text('Rate',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             Text('Making Charge',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             Text('Other Charges',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                           Column(children: [
//                             Text('Amount',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold))
//                           ]),
//                         ]),
//                         TableRow(
//                           children: [
//                             Column(children: [Text("1")]),
//                             Column(children: [
//                               SizedBox(
//                                 child: Text("Silver-Ring"),
//                               )
//                             ]),
//                             Column(children: [Text("10")]),
//                             Column(children: [Text("29")]),
//                             Column(children: [Text("20")]),
//                             Column(children: [Text("200")]),
//                             Column(children: [Text("100")]),
//                             Column(children: [Text("6000.00")]),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             Column(children: [Text('2')]),
//                             Column(children: [Text('Gold-Ring')]),
//                             Column(children: [Text('3')]),
//                             Column(children: [Text('1.8')]),
//                             Column(children: [Text('12.00')]),
//                             Column(children: [Text('1.80')]),
//                             Column(children: [Text('N/A')]),
//                             Column(children: [Text('90.00')]),
//                           ],
//                         ),
//                         TableRow(
//                           children: [
//                             Column(children: [Text('')]),
//                             Column(children: [
//                               SizedBox(
//                                   child: Padding(
//                                 padding: EdgeInsets.all(5.0),
//                                 child: Text(
//                                   'Total',
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                               ))
//                             ]),
//                             Column(children: [Text('')]),
//                             Column(children: [Text('')]),
//                             Column(children: [Text('')]),
//                             Column(children: [Text('')]),
//                             Column(children: [Text('')]),
//                             Column(children: [
//                               Text(
//                                 '90000.00',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               )
//                             ]),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 400,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount:
//                     1, // You can adjust this if you want to display multiple tables
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 600,
//                     margin: EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         Table(
//                           defaultColumnWidth: FixedColumnWidth(90.0),
//                           border: TableBorder.all(
//                             color: Colors.black,
//                             style: BorderStyle.solid,
//                             width: 2,
//                           ),
//                           children: const [
//                             TableRow(children: [
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Text('Type',
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Gross Weight',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Other Weight',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Net Weight',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Rate',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Fine Gold',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                               Column(children: [
//                                 Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Text('Amount',
//                                       style: TextStyle(
//                                           fontSize: 12.0,
//                                           fontWeight: FontWeight.bold)),
//                                 )
//                               ]),
//                             ]),
//                             TableRow(
//                               children: [
//                                 Column(children: [Text("Gold")]),
//                                 Column(children: [Text("10")]),
//                                 Column(children: [Text("2")]),
//                                 Column(children: [Text("8")]),
//                                 Column(children: [Text("2.6")]),
//                                 Column(children: [Text("100")]),
//                                 Column(children: [Text("60000")]),
//                               ],
//                             ),
//                             TableRow(
//                               children: [
//                                 Column(children: [Text('Silver')]),
//                                 Column(children: [Text('20')]),
//                                 Column(children: [Text('3')]),
//                                 Column(children: [Text('1.8')]),
//                                 Column(children: [Text('12.00')]),
//                                 Column(children: [Text('1.80')]),
//                                 Column(children: [Text('N/A')]),
//                               ],
//                             ),
//                             TableRow(
//                               children: [
//                                 Column(children: [Text('Gold')]),
//                                 Column(children: [Text('45')]),
//                                 Column(children: [Text('2')]),
//                                 Column(children: [Text('3.2')]),
//                                 Column(children: [Text('15.00')]),
//                                 Column(children: [Text('6.40')]),
//                                 Column(children: [Text('N/A')]),
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),

//                         /// Cash Table
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Table(
//                               defaultColumnWidth: FixedColumnWidth(150.0),
//                               border: TableBorder.all(
//                                 color: Colors.black,
//                                 style: BorderStyle.solid,
//                                 width: 2,
//                               ),
//                               children: [
//                                 const TableRow(children: [
//                                   Column(children: [
//                                     Text('Cash',
//                                         style: TextStyle(
//                                             fontSize: 12.0,
//                                             fontWeight: FontWeight.bold))
//                                   ]),
//                                   Column(children: [
//                                     Text('Bank',
//                                         style: TextStyle(
//                                             fontSize: 12.0,
//                                             fontWeight: FontWeight.bold))
//                                   ]),
//                                 ]),
//                                 TableRow(
//                                   children: [
//                                     Column(children: [
//                                       Container(
//                                         height: 30,
//                                         child: const Padding(
//                                           padding: EdgeInsets.all(8.0),
//                                           child: Text("10,0000"),
//                                         ),
//                                       )
//                                     ]),
//                                     Column(children: [
//                                       Container(
//                                         height: 30,
//                                         child: const Padding(
//                                           padding: EdgeInsets.all(8.0),
//                                           child: Text("78,0000"),
//                                         ),
//                                       )
//                                     ]),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               width: 40,
//                             ),
//                             Table(
//                               defaultColumnWidth: const FixedColumnWidth(290.0),
//                               border: TableBorder.all(
//                                 color: Colors.black,
//                                 style: BorderStyle.solid,
//                                 width: 2,
//                               ),
//                               children: [
//                                 const TableRow(children: [
//                                   Column(children: [
//                                     Text(' Advance Amount ',
//                                         style: TextStyle(
//                                             fontSize: 12.0,
//                                             fontWeight: FontWeight.bold))
//                                   ]),
//                                 ]),
//                                 TableRow(
//                                   children: [
//                                     Column(children: [
//                                       Container(
//                                         height: 30,
//                                         child: const Padding(
//                                           padding: EdgeInsets.all(8.0),
//                                           child: Text("10,0000"),
//                                         ),
//                                       ),
//                                     ]),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Table(
//                           defaultColumnWidth: const FixedColumnWidth(290.0),
//                           border: TableBorder.all(
//                             color: Colors.black,
//                             style: BorderStyle.solid,
//                             width: 2,
//                           ),
//                           children: [
//                             const TableRow(children: [
//                               Column(children: [
//                                 Text(' Final Chargeable Amount ',
//                                     style: TextStyle(
//                                         fontSize: 12.0,
//                                         fontWeight: FontWeight.bold))
//                               ]),
//                             ]),
//                             TableRow(
//                               children: [
//                                 Column(children: [
//                                   Container(
//                                     height: 30,
//                                     child: const Padding(
//                                       padding: EdgeInsets.all(8.0),
//                                       child: Text("10,0000",
//                                           style: TextStyle(
//                                               fontSize: 14.0,
//                                               fontWeight: FontWeight.bold)),
//                                     ),
//                                   ),
//                                 ]),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
