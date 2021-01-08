import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs Demo"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.deepOrangeAccent,
                child: Center(
                  child: Text(
                    'Primeira Guia',
                    style: TextStyle(),
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Center(
                  child: Text(
                    'Segunda Guia',
                    style: TextStyle(),
                  ),
                ),
              ),
              Container(
                color: Colors.teal,
                child: Center(
                  child: Text(
                    'Terceira Guia',
                    style: TextStyle(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
