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
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return new Column(
      children: <Widget>[
        TextFormField(
          decoration: new InputDecoration(hintText: 'Nome Completo'),
          maxLength: 40,
          validator: _validarNome,
          onSaved: (String val) {
            nome = val;
          },
        ),
        TextFormField(
          decoration: new InputDecoration(hintText: 'Celular'),
          keyboardType: TextInputType.phone,
          maxLength: 10,
          validator: _validarCelular,
          onSaved: (String val) {
            celular = val;
          },
        ),
        TextFormField(
          decoration: new InputDecoration(hintText: 'Email'),
          keyboardType: TextInputType.emailAddress,
          maxLength: 40,
          validator: _validarEmail,
          onSaved: (String val) {
            nome = val;
          },
        ),
        SizedBox(
          height: 15.0,
        ),
        RaisedButton(
          onPressed: _sendForm,
          child: Text('Enviar'),
        ),
      ],
    );
  }
}
