import 'package:flutter_test/flutter_test.dart';
import 'package:quick_digits/main.dart'; // Import your app's main file
import 'package:quick_digits/calculator.dart';
void main() {
  testWidgets('Calculator arithmetic operations', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); 

    // Verify that the Calculator widget is rendered.
    expect(find.byType(Calculator), findsOneWidget);

    //Test addition
    // Example: Test button press and verify the result.
    await tester.tap(find.text('1'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('2'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('3'), findsOneWidget); 

    // Test multiplication
    await tester.tap(find.text('2'));
    await tester.tap(find.text('x'));
    await tester.tap(find.text('2'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('4'), findsOneWidget); 

    // Test subtraction
    await tester.tap(find.text('8'));
    await tester.tap(find.text('-'));
    await tester.tap(find.text('3'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('5'), findsOneWidget); 

    // Test division
    await tester.tap(find.text('9'));
    await tester.tap(find.text('/'));
    await tester.tap(find.text('3'));
    await tester.tap(find.text('='));
    await tester.pump();
    expect(find.text('3'), findsOneWidget); 

  // Test persentage
    // await tester.tap(find.text('9'));
    // await tester.tap(find.text('%'));
    // await tester.tap(find.text('='));
    // await tester.pump();
    // expect(find.text('0.09'), findsOneWidget); 
  });
  }
