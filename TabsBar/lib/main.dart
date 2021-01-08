import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBar com guias"),
            bottom: TabBar(
              tabs: <Widget>[
                Text('Primeira Guia'),
                Text('Segunda Guia'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
