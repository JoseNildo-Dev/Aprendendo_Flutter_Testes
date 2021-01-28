import 'package:flutter/material.dart';

void main() => runApp(MeuForm());

class MeuForm extends StatefulWidget {
  @override
  _MeuFormState createState() => _MeuFormState();
}

class _MeuFormState extends State<MeuForm> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome;
  String email;
  String celular;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulário com Validação'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Form(
              key: _key,
              autovalidate: _validate,
              child: formUI(),
            ),
          ),
        ),
      ),
    );
  }
}
