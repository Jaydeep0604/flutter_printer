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

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Container(
                  margin: pw.EdgeInsets.all(20),
                  child: pw.Table(
                    defaultColumnWidth: pw.FixedColumnWidth(120.0),
                    border: pw.TableBorder.all(
                        color: PdfColor.fromInt(0xFF000000),
                        style: pw.BorderStyle.solid,
                        width: 2),
                    children: [
                      pw.TableRow(children: [
                        pw.Column(children: [
                          pw.Text('Website',
                              style: pw.TextStyle(fontSize: 20.0))
                        ]),
                        pw.Column(children: [
                          pw.Text('Tutorial',
                              style: pw.TextStyle(fontSize: 20.0))
                        ]),
                        pw.Column(children: [
                          pw.Text('Review', style: pw.TextStyle(fontSize: 20.0))
                        ]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(children: [pw.Text('Javatpoint')]),
                        pw.Column(children: [pw.Text('Flutter')]),
                        pw.Column(children: [pw.Text('5*')]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(children: [pw.Text('Javatpoint')]),
                        pw.Column(children: [pw.Text('MySQL')]),
                        pw.Column(children: [pw.Text('5*')]),
                      ]),
                      pw.TableRow(children: [
                        pw.Column(children: [pw.Text('Javatpoint')]),
                        pw.Column(children: [pw.Text('ReactJS')]),
                        pw.Column(children: [pw.Text('5*')]),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          );
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
