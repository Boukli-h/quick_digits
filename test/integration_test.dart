import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_digits/calculator.dart';

void main() {
testWidgets('Calculator Integration Test', (WidgetTester tester) async {
    // Build the calculator widget
    await tester.pumpWidget(MaterialApp(
      home: Calculator(),
    ));

    // Tap the buttons
    await tester.tap(find.widgetWithText(OutlinedButton, '1'));
    await tester.pump();
    await tester.tap(find.widgetWithText(OutlinedButton, '+'));
    await tester.pump();
    await tester.tap(find.widgetWithText(OutlinedButton, '2'));
    await tester.pump();
    await tester.tap(find.widgetWithText(OutlinedButton, '='));

    // Allow time for the UI to update
    await tester.pumpAndSettle();

    // Find the result text widget
    final resultText = find.text('3');

    // Verify the result is as expected
    expect(resultText, findsOneWidget);
  });
}






