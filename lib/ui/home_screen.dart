import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Uint8List> _generatePdf(PdfPageFormat format, String title) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();

    // pdf.addPage(
    //   pw.Page(
    //     pageFormat: format,
    //     build: (context) {
    //       return pw.Center(
    //         child: pw.Column(
    //           children: [
    //           pw.ListView.builder(
    //             // scrollDirection: Axis.horizontal,
    //             itemCount: 1,
    //             // shrinkWrap: true,
    //             itemBuilder: (context, index) {
    //               return pw.Container(
    //                 color: PdfColor.fromInt(0xFFFFFFFF),
    //                 margin: pw.EdgeInsets.all(20),
    //                 child: pw.Table(
    //                   defaultColumnWidth: pw.FixedColumnWidth(90.0),
    //                   defaultVerticalAlignment:
    //                       pw.TableCellVerticalAlignment.middle,
    //                   border: pw.TableBorder.all(
    //                     color: PdfColor.fromInt(0xFF000000),
    //                     style: pw.BorderStyle.solid,
    //                     width: 2,
    //                   ),
    //                   children: [
    //                     pw.TableRow(children: [
    //                       pw.Column(children: [
    //                         pw.Text('Sr No',
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.SizedBox(
    //                           child: pw.Text('Description',
    //                               style: pw.TextStyle(
    //                                   fontSize: 12.0,
    //                                   fontWeight: pw.FontWeight.bold)),
    //                         )
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('PCS',
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('Weight',
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('Rate',
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('Making Charge',
    //                             textAlign: pw.TextAlign.center,
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('Other Charges',
    //                             textAlign: pw.TextAlign.center,
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                       pw.Column(children: [
    //                         pw.Text('Amount',
    //                             style: pw.TextStyle(
    //                                 fontSize: 12.0,
    //                                 fontWeight: pw.FontWeight.bold))
    //                       ]),
    //                     ]),
    //                     pw.TableRow(
    //                       children: [
    //                         pw.Column(children: [pw.Text("1")]),
    //                         pw.Column(children: [
    //                           pw.SizedBox(
    //                             child: pw.Text("Silver-Ring"),
    //                           )
    //                         ]),
    //                         pw.Column(children: [pw.Text("10")]),
    //                         pw.Column(children: [pw.Text("29")]),
    //                         pw.Column(children: [pw.Text("20")]),
    //                         pw.Column(children: [pw.Text("200")]),
    //                         pw.Column(children: [pw.Text("100")]),
    //                         pw.Column(children: [pw.Text("6000.00")]),
    //                       ],
    //                     ),
    //                     pw.TableRow(
    //                       children: [
    //                         pw.Column(children: [pw.Text('2')]),
    //                         pw.Column(children: [pw.Text('Gold-Ring')]),
    //                         pw.Column(children: [pw.Text('3')]),
    //                         pw.Column(children: [pw.Text('1.8')]),
    //                         pw.Column(children: [pw.Text('12.00')]),
    //                         pw.Column(children: [pw.Text('1.80')]),
    //                         pw.Column(children: [pw.Text('N/A')]),
    //                         pw.Column(children: [pw.Text('90.00')]),
    //                       ],
    //                     ),
    //                     pw.TableRow(
    //                       children: [
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [
    //                           pw.SizedBox(
    //                               child: pw.Padding(
    //                             padding: pw.EdgeInsets.all(5.0),
    //                             child: pw.Text(
    //                               'Total',
    //                               style: pw.TextStyle(
    //                                   fontWeight: pw.FontWeight.bold),
    //                             ),
    //                           ))
    //                         ]),
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [pw.Text('')]),
    //                         pw.Column(children: [
    //                           pw.Text(
    //                             '90000.00',
    //                             style: pw.TextStyle(
    //                                 fontWeight: pw.FontWeight.bold),
    //                           )
    //                         ]),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               );
    //             },
    //           ),
    //             pw.SizedBox(
    //               height: 20,
    //             ),
    //             pw.Container(
    //               height: 400,
    //               child: pw.ListView.builder(
    //                 // scrollDirection: Axis.horizontal,
    //                 itemCount:
    //                     1, // You can adjust this if you want to display multiple tables
    //                 // shrinkWrap: true,
    //                 itemBuilder: (context, index) {
    //                   return pw.Container(
    //                     height: 600,
    //                     margin: pw.EdgeInsets.all(20),
    //                     child: pw.Column(
    //                       children: [
    //                         pw.Table(
    //                           defaultColumnWidth: pw.FixedColumnWidth(90.0),
    //                           border: pw.TableBorder.all(
    //                             color: PdfColor.fromInt(0xFF000000),
    //                             style: pw.BorderStyle.solid,
    //                             width: 2,
    //                           ),
    //                           children: [
    //                             pw.TableRow(children: [
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(8.0),
    //                                   child: pw.Text('Type',
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Gross Weight',
    //                                       textAlign: pw.TextAlign.center,
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Other Weight',
    //                                       textAlign: pw.TextAlign.center,
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Net Weight',
    //                                       textAlign: pw.TextAlign.center,
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Rate',
    //                                       textAlign: pw.TextAlign.center,
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Fine Gold',
    //                                       textAlign: pw.TextAlign.center,
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                               pw.Column(children: [
    //                                 pw.Padding(
    //                                   padding: pw.EdgeInsets.all(5.0),
    //                                   child: pw.Text('Amount',
    //                                       style: pw.TextStyle(
    //                                           fontSize: 12.0,
    //                                           fontWeight: pw.FontWeight.bold)),
    //                                 )
    //                               ]),
    //                             ]),
    //                             pw.TableRow(
    //                               children: [
    //                                 pw.Column(children: [pw.Text("Gold")]),
    //                                 pw.Column(children: [pw.Text("10")]),
    //                                 pw.Column(children: [pw.Text("2")]),
    //                                 pw.Column(children: [pw.Text("8")]),
    //                                 pw.Column(children: [pw.Text("2.6")]),
    //                                 pw.Column(children: [pw.Text("100")]),
    //                                 pw.Column(children: [pw.Text("60000")]),
    //                               ],
    //                             ),
    //                             pw.TableRow(
    //                               children: [
    //                                 pw.Column(children: [pw.Text('Silver')]),
    //                                 pw.Column(children: [pw.Text('20')]),
    //                                 pw.Column(children: [pw.Text('3')]),
    //                                 pw.Column(children: [pw.Text('1.8')]),
    //                                 pw.Column(children: [pw.Text('12.00')]),
    //                                 pw.Column(children: [pw.Text('1.80')]),
    //                                 pw.Column(children: [pw.Text('N/A')]),
    //                               ],
    //                             ),
    //                             pw.TableRow(
    //                               children: [
    //                                 pw.Column(children: [pw.Text('Gold')]),
    //                                 pw.Column(children: [pw.Text('45')]),
    //                                 pw.Column(children: [pw.Text('2')]),
    //                                 pw.Column(children: [pw.Text('3.2')]),
    //                                 pw.Column(children: [pw.Text('15.00')]),
    //                                 pw.Column(children: [pw.Text('6.40')]),
    //                                 pw.Column(children: [pw.Text('N/A')]),
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                         pw.SizedBox(
    //                           height: 20,
    //                         ),
    //                         pw.Row(
    //                           crossAxisAlignment: pw.CrossAxisAlignment.start,
    //                           children: [
    //                             pw.Table(
    //                               defaultColumnWidth:
    //                                   pw.FixedColumnWidth(150.0),
    //                               border: pw.TableBorder.all(
    //                                 color:PdfColor.fromInt(0xFF000000),
    //                                 style: pw.BorderStyle.solid,
    //                                 width: 2,
    //                               ),
    //                               children: [
    //                                 pw.TableRow(children: [
    //                                   pw.Column(children: [
    //                                     pw.Text('Cash',
    //                                         style: pw.TextStyle(
    //                                             fontSize: 12.0,
    //                                             fontWeight: pw.FontWeight.bold))
    //                                   ]),
    //                                   pw.Column(children: [
    //                                     pw.Text('Bank',
    //                                         style: pw.TextStyle(
    //                                             fontSize: 12.0,
    //                                             fontWeight: pw.FontWeight.bold))
    //                                   ]),
    //                                 ]),
    //                                 pw.TableRow(
    //                                   children: [
    //                                     pw.Column(children: [
    //                                       pw.Container(
    //                                         height: 30,
    //                                         child: pw.Padding(
    //                                           padding: pw.EdgeInsets.all(8.0),
    //                                           child: pw.Text("10,0000"),
    //                                         ),
    //                                       )
    //                                     ]),
    //                                     pw.Column(children: [
    //                                       pw.Container(
    //                                         height: 30,
    //                                         child: pw.Padding(
    //                                           padding: pw.EdgeInsets.all(8.0),
    //                                           child: pw.Text("78,0000"),
    //                                         ),
    //                                       )
    //                                     ]),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                             pw.SizedBox(
    //                               width: 40,
    //                             ),
    //                             pw.Table(
    //                               defaultColumnWidth:
    //                                   pw.FixedColumnWidth(290.0),
    //                               border: pw.TableBorder.all(
    //                                 color: PdfColor.fromInt(0xFF000000),
    //                                 style: pw.BorderStyle.solid,
    //                                 width: 2,
    //                               ),
    //                               children: [
    //                                 pw.TableRow(children: [
    //                                   pw.Column(children: [
    //                                     pw.Text(' Advance Amount ',
    //                                         style: pw.TextStyle(
    //                                             fontSize: 12.0,
    //                                             fontWeight: pw.FontWeight.bold))
    //                                   ]),
    //                                 ]),
    //                                 pw.TableRow(
    //                                   children: [
    //                                     pw.Column(children: [
    //                                       pw.Container(
    //                                         height: 30,
    //                                         child: pw.Padding(
    //                                           padding: pw.EdgeInsets.all(8.0),
    //                                           child: pw.Text("10,0000"),
    //                                         ),
    //                                       ),
    //                                     ]),
    //                                   ],
    //                                 ),
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                         pw.SizedBox(
    //                           height: 20,
    //                         ),
    //                         pw.Table(
    //                           defaultColumnWidth: pw.FixedColumnWidth(290.0),
    //                           border: pw.TableBorder.all(
    //                             color: PdfColor.fromInt(0xFF000000),
    //                             style: pw.BorderStyle.solid,
    //                             width: 2,
    //                           ),
    //                           children: [
    //                             pw.TableRow(children: [
    //                               pw.Column(children: [
    //                                 pw.Text(' Final Chargeable Amount ',
    //                                     style: pw.TextStyle(
    //                                         fontSize: 12.0,
    //                                         fontWeight: pw.FontWeight.bold))
    //                               ]),
    //                             ]),
    //                             pw.TableRow(
    //                               children: [
    //                                 pw.Column(children: [
    //                                   pw.Container(
    //                                     height: 30,
    //                                     child: pw.Padding(
    //                                       padding: pw.EdgeInsets.all(8.0),
    //                                       child: pw.Text("10,0000",
    //                                           style: pw.TextStyle(
    //                                               fontSize: 14.0,
    //                                               fontWeight:
    //                                                   pw.FontWeight.bold)),
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
    //       );
    //     },
    //   ),
    // );

    final table1 = pw.Table(
      border: pw.TableBorder.all(color: PdfColors.black, width: 1),
      children: [
        pw.TableRow(children: [
          pw.Text('Sr No', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Description',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('PCS', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Weight',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Rate', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Making Charge',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Other Charges',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Amount',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
        ]),
        pw.TableRow(
          children: [
            pw.Text("1"),
            pw.Text("Silver-Ring"),
            pw.Text("10"),
            pw.Text("29"),
            pw.Text("20"),
            pw.Text("200"),
            pw.Text("100"),
            pw.Text("6000.00"),
          ],
        ),
        pw.TableRow(
          children: [
            pw.Text("2"),
            pw.Text("Gold-Ring"),
            pw.Text("3"),
            pw.Text("1.8"),
            pw.Text("12.00"),
            pw.Text("1.80"),
            pw.Text("N/A"),
            pw.Text("90.00"),
          ],
        ),
        pw.TableRow(
          children: [
            pw.Text(""),
            pw.Text("Total",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
            pw.Text(""),
            pw.Text(""),
            pw.Text(""),
            pw.Text(""),
            pw.Text(""),
            pw.Text("90000.00",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          ],
        ),
      ],
    );

    // Create the second table with your data
    final table2 = pw.Table(
      border: pw.TableBorder.all(color: PdfColors.black, width: 1),
      children: [
        pw.TableRow(children: [
          pw.Text('Type', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Gross Weight',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Other Weight',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Net Weight',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Rate', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Fine Gold',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
          pw.Text('Amount',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
        ]),
        pw.TableRow(
          children: [
            pw.Text("Gold"),
            pw.Text("10"),
            pw.Text("2"),
            pw.Text("8"),
            pw.Text("2.6"),
            pw.Text("100"),
            pw.Text("60000"),
          ],
        ),
        pw.TableRow(
          children: [
            pw.Text("Silver"),
            pw.Text("20"),
            pw.Text("3"),
            pw.Text("1.8"),
            pw.Text("12.00"),
            pw.Text("1.80"),
            pw.Text("N/A"),
          ],
        ),
      ],
    );

    pdf.addPage(
      pw.MultiPage(
        pageFormat: format,
        build: (pw.Context context) {
          return [
            pw.Header(
              level: 0,
              child: pw.Text('PDF Example - $title'),
            ),
            pw.SizedBox(height: 10),
            pw.Text('First Table', style: pw.TextStyle(fontSize: 20)),
            pw.SizedBox(height: 10),
            table1,
            pw.SizedBox(height: 20),
            pw.Text('Second Table', style: pw.TextStyle(fontSize: 20)),
            pw.SizedBox(height: 10),
            table2,
          ];
        },
      ),
    );

    return pdf.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => _generatePdf(format, "Jaydeep"),
      ),
    );
  }
}
