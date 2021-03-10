import 'package:bytebank_v2/components/editor.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Receber Depósito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'Valor';
const textoBotaoConfirmar = 'Confirmar';
final TextEditingController _controladorCampoValor = TextEditingController();

class FormularioDeposito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Editor(
            dica: _dicaCampoValor,
            controlador: _controladorCampoValor,
            rotulo: _rotuloCampoValor,
            icone: Icons.monetization_on,
          ),
          TextButton(
            child: Text('Confirmar'),
            onPressed: () => _criaDeposito(context),
          )
        ],
      )),
    );
  }

  _criaDeposito(context) {
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);

    if (depositoValido) {
      Navigator.pop(context);
    }
  }

  _validaDeposito(valor) {
    final _campoPreenchido = valor != null;
    return _campoPreenchido;
  }
}
