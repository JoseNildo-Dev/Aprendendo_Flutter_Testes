import 'package:flutter/material.dart';

void main() => runApp(MeuForm());

class MeuForm extends StatefulWidget {
  @override
  _MeuFormState createState() => _MeuFormState();
}

class _MeuFormState extends State<MeuForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Cria o widget Form usando _formKey
    return Form(
      key: _formKey,
      child: ,
    );
  }
}
