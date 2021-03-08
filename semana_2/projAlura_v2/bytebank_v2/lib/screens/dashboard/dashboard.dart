import 'package:bytebank_v2/models/saldo.dart';
import 'package:bytebank_v2/screens/dashboard/saldo.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ByteBank'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(Saldo(10.0)),
        ));
  }
}
