// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumero = TextEditingController();
  final TextEditingController _controladoraCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fazer Transferência'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.all(16.0), //Espaço entre a borda e o input
            child: TextField(
              controller: _controladorCampoNumero,
              style: TextStyle(
                fontSize: 24.0, //Tamanho da fonte (Base 8)
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.house), //Icone
                labelText: 'Número da Conta', //Rótulo
                hintText: '0000 - 0', //Dica
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controladoraCampoValor,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Valor',
                hintText: '0.00',
              ),
              keyboardType: TextInputType.number, //Tipo do teclado
            ),
          ),
          RaisedButton(
            child: Text('Confirmar'),
            onPressed: () {
              //Clique do botão
              final int numeroConta =
                  int.tryParse(_controladorCampoNumero.text);
              final double valor =
                  double.tryParse(_controladoraCampoValor.text);

              if (numeroConta != null && valor != null) {
                final transferenciaCriada = Transferencia(valor, numeroConta);
                debugPrint('$transferenciaCriada');
              }
            },
          ),
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(213.00, 1457659)),
          ItemTransferencia(Transferencia(234.99, 987876)),
          ItemTransferencia(Transferencia(23.34, 2344432))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia._valor.toString()),
        subtitle: Text(_transferencia._numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(this._valor, this._numeroConta);
  @override
  String toString() {
    return 'Transferencia{valor: $_valor, numeroConta:$_numeroConta}';
  }
}
