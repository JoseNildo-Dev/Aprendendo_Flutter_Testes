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

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarCelular(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o celular";
    } else if (value.length != 10) {
      return "O celular deve ter 10 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "O número do celular so deve conter dígitos";
    }
    return null;
  }

  String _validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }
}
