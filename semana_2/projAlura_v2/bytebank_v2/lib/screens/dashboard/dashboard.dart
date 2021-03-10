import 'package:bytebank_v2/models/saldo.dart';
import 'package:bytebank_v2/screens/dashboard/saldo.dart';
import 'package:bytebank_v2/screens/deposito/formulario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ByteBank'),
        ),
        body: ListView(children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          TextButton(
            child: Text("Receber depósito"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FormularioDeposito();
              }));
            },
          ),
        ]));
  }
}
