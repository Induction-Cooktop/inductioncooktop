// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class selection extends StatefulWidget {
  const selection({Key? key}) : super(key: key);

  @override
  State<selection> createState() => _selectionState();
}

class _selectionState extends State<selection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(237, 166, 237, 232),
        appBar: AppBar(
          // ignore_for_file: prefer_const_constructors
          backgroundColor: Color.fromARGB(235, 104, 227, 219),
          centerTitle: true,
          title: Text(
            'Add Your own Mode',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.power_input, color: Colors.green[700]),
                child: Text("POWER", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                icon: Icon(
                  Icons.thermostat,
                  color: Colors.redAccent,
                ),
                child:
                    Text("TEMPERATURE", style: TextStyle(color: Colors.black)),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(75, 450, 75, 60),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/select1");
                },
                color: Colors.amberAccent,
                child: Text('Set Timer',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(75, 450, 75, 60),
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/select1");
                },
                color: Colors.amberAccent,
                child: Text('Set Timer',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
