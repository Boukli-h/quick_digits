import 'package:flutter/material.dart';
import 'calculator.dart';
void main() => runApp(
  // DevicePreview(
  //     enabled: true,
      // builder: (context) =>
       MyApp(),
    // ),
    );

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        title: 'QuickDigits',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
           primarySwatch:Colors.green,
           appBarTheme: const AppBarTheme(
          color: Colors.green, // Set the background color of the AppBar
      ),
       ),
       
        home: Calculator(),
      ),
    );
  }
}
