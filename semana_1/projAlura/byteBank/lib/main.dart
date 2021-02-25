// ignore: avoid_web_libraries_in_flutter
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
      children: <Widget>[Text('1213')],
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
