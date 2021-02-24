import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: listaTransferencias(),
          appBar: AppBar(
            title: Text('Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class listaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        itemTransferencia('984.00', '15845-45'),
        itemTransferencia('114.00', '08524-00'),
        itemTransferencia('289.00', '65987-24'),
      ],
    );
  }
}

class itemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;

  itemTransferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(valor),
        subtitle: Text(numeroConta),
      ),
    );
  }
}
