import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ClassIp(),
    debugShowCheckedModeBanner: false,
  ));
}

class ClassIp extends StatefulWidget {
  const ClassIp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Classificador();
  }
}

class _Classificador extends State<StatefulWidget> {
  final _formClasses = GlobalKey<FormState>();
  double _valor = 0.0;

  var _valorIp;

  String ismensagem(valorClass) {
    String ipclasse = '';

    if (valorClass > 0 && valorClass <= 127) {
      ipclasse = 'Classe de Ip "A"!';
    }
    if (valorClass >= 128 && valorClass <= 191) {
      ipclasse = 'Classe de Ip "B"!';
    }
    if (valorClass >= 192 && valorClass <= 223) {
      ipclasse = 'Classe de Ip "C"!';
    }
    if (valorClass >= 224 && valorClass <= 239) {
      ipclasse = 'Classe de Ip "D"!';
    }
    if (valorClass >= 240 && valorClass <= 255) {
      ipclasse = 'Classe de Ip "E"!';
    }
    return ipclasse;
  }

  var _mensagem;

  void _calcTotal() {
    setState(() {
      _valorIp = _valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classificação de IP'),
        backgroundColor: const Color.fromARGB(255, 10, 57, 96),
        centerTitle: true,
      ),
      body: Form(
          key: _formClasses,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      maxLength: 3,
                      decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Oct 1:',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        // função anônima!
                        // corpo da função anônima:
                        if (value!.isEmpty) {
                          return 'Erro! Informe um valor!';
                        } else if (double.parse(value) < 1 ||
                            double.parse(value) > 255) {
                          return 'Ip Inválido!';
                        } else {
                          _valor = double.parse(value);
                        }
                        return null;
                      }, // fim da função anônima
                    ),
                  )),
                  const Text('.', style: TextStyle(fontSize: 40.0)),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      maxLength: 3,
                      decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Oct 2:',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        // função anônima!
                        // corpo da função anônima:
                        if (value!.isEmpty) {
                          return 'Erro! Informe um valor!';
                        } else if (double.parse(value) > 255) {
                          return 'Ip Inválido!';
                        }
                        return null;
                      }, // fim da função anônima
                    ),
                  )),
                  const Text('.', style: TextStyle(fontSize: 40.0)),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      maxLength: 3,
                      decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Oct 3:',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        // função anônima!
                        // corpo da função anônima:
                        if (value!.isEmpty) {
                          return 'Erro! Informe um valor!';
                        } else if (double.parse(value) > 255) {
                          return 'Ip Inválido!';
                        }
                        return null;
                      }, // fim da função anônima
                    ),
                  )),
                  const Text('.', style: TextStyle(fontSize: 40.0)),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      maxLength: 3,
                      decoration: const InputDecoration(
                          counterText: '',
                          hintText: 'Oct 4:',
                          border: OutlineInputBorder()),
                      validator: (value) {
                        // função anônima!
                        // corpo da função anônima:
                        if (value!.isEmpty) {
                          return 'Erro! Informe um valor!';
                        } else if (double.parse(value) > 255) {
                          return 'Ip Inválido!';
                        }
                        return null;
                      }, // fim da função anônima
                    ),
                  )),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formClasses.currentState!.validate()) {
                          _calcTotal();
                        }
                      },
                      child: const Text('Classifique o IP'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 10, 57, 96),
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    _mensagem = ismensagem(_valor),
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          )),
    );
  }

  clamp(Type num, lowerLimit, Type num2, upperLimit) {}
} // fim _CalcContaEstado
