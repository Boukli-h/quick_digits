// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:quick_digits/main.dart';

void main() {
  testWidgets('Calculator Widget Addition Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text('2'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('3'));
    await tester.tap(find.text('='));

    await tester.pump();

    expect(find.text('5'), findsOneWidget);
  });
}
