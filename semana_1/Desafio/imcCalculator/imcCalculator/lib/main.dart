import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IM Calculator',
      home: CalculatorHome(),
    );
  }
}

class CalculatorHome extends StatelessWidget {
  final TextEditingController _controllerPeso = TextEditingController();
  final TextEditingController _controllerAltura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Builder(
        builder: (context) => Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controllerPeso,
                decoration: InputDecoration(
                  hintText: '78',
                  labelText: 'Peso (kg)',
                ),
              ),
              TextField(
                controller: _controllerAltura,
                decoration: InputDecoration(
                  hintText: '1.80',
                  labelText: 'Altura',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      onPressed: () {
                        final peso = int.tryParse(_controllerPeso.text);
                        final altura = double.tryParse(_controllerAltura.text);

                        if (peso != null &&
                            altura != null &&
                            peso > 0 &&
                            altura > 0) {
                          final imc = peso / (altura * altura);
                          print('Valor do imc: $imc');
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (contex) {
                              return Resultado(
                                imc: imc,
                              );
                            }),
                          );
                        } else {
                          final snackBar = SnackBar(
                            content: Text('Ops... Parâmetros inválidos!'),
                            action: SnackBarAction(
                              label: 'Ok',
                              onPressed: () {},
                            ),
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Text('Calcular')),
                  SizedBox(
                    width: 8,
                  ),
                  RaisedButton(
                    child: Text('Limpar'),
                    onPressed: () {
                      _controllerPeso.text = '';
                      _controllerAltura.text = '';
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Resultado extends StatelessWidget {
  final double imc;

  const Resultado({Key key, this.imc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: Center(
        child: Text('O seu imc é $imc'),
      ),
    );
  }
}
