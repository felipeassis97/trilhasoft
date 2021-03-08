import 'package:bytebank_v2/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'screens/transferencia/transferencia.dart';

void main() => runApp(BytebankAppV2());

class BytebankAppV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
