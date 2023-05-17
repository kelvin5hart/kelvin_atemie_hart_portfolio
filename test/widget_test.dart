// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kelvin_atemie_hart_portfolio/screens/desktop/home_section_desktop.dart';
import 'package:kelvin_atemie_hart_portfolio/widgets/download_resume_widget.dart';
import 'package:kelvin_atemie_hart_portfolio/widgets/social_media_icons_widget.dart';
import 'package:kelvin_atemie_hart_portfolio/widgets/typewriter_text_widget.dart';

void main() {
  testWidgets('HomeSection widget test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(
      const MaterialApp(
        home: HomeSection(),
      ),
    );

    // Check if the text is displayed
    expect(find.text('{"I_Am:'), findsOneWidget);

    // Check if the TypeWriterTextWidget is displayed
    expect(find.byType(TypeWriterTextWidget), findsOneWidget);

    // Check if the SocialMediaIconsWidget is displayed
    expect(find.byType(SocialMediaIconsWidget), findsOneWidget);

    // Check if the DownloadResume widget is displayed
    expect(find.byType(DownloadResume), findsOneWidget);

    // Check if the image is displayed
    expect(find.byType(Image), findsOneWidget);
  });
}

