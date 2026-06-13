// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ca_attendence/main.dart';

void main() {
  testWidgets('Home page shows logo', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // Suggestion: Use pumpAndSettle() if there are any animations or 
    // initial async operations to ensure the UI is fully rendered.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify that the Home widget is present.
    expect(find.byType(Home), findsOneWidget);

    // Note: NetworkImage will not load in tests. You might see a placeholder 
    // or an error if not mocked.
    expect(find.byType(Image), findsOneWidget);
  });
}
