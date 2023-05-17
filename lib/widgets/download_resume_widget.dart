import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;

class DownloadResume extends StatelessWidget {
  const DownloadResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnchorElement anchorElement() {
      return AnchorElement();
    }

    void downloadPdfFromAssets() async {
      // Get the PDF file from the assets folder
      var pdfData = await rootBundle
          .load('assets/Kelvin Atemie-Hart Software Developer CV.pdf');

      // Create a new anchor element
      var anchor = anchorElement();

      // Create a Blob object from the PDF data
      var blob = Blob([pdfData], 'application/pdf');

      // Set the anchor's href to the Blob object URL
      anchor.href = Url.createObjectUrl(blob);

      // Set the anchor's download attribute to a file name
      anchor.download = 'Kelvin Atemie-Hart Software Developer CV.pdf';

      // Click the anchor to initiate the download
      anchor.click();
    }

    return ElevatedButton(
        onPressed: () {
          downloadPdfFromAssets();
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
          child: Text("Download My Resume"),
        ));
  }
}
