import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Ui',
      theme: ThemeData(
        primarySwatch: Colors.teal
        ,
      ),
      home: const MyHomePage(title: 'WhatsApp Ui'),
    );
  }
}
