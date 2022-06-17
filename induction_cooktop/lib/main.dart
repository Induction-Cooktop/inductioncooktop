// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:induction_cooktop/pages/timeset.dart';
import 'package:induction_cooktop/timer/countdown-page.dart';
import 'package:induction_cooktop/widgets/gauge.dart';

void main() => runApp(MaterialApp(
      home: home(),
      routes: {
        "/select": (context) => selection(),
        "/select1": (context) => CountdownPage(),
        "/select2": (context) => gauge(
              title: '',
            ),
      },
    ));

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: Text("Induction Cooktop"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(
              "Cooking Modes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.00,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 3, 0, 0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'BOIL',
                      style: TextStyle(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 3, 0, 0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'FRY',
                      style: TextStyle(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 3, 0, 0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'WARM',
                      style: TextStyle(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 3, 0, 0),
                // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, routeName)
                    },
                    color: Colors.green,
                    child: Text(
                      'STEAM',
                      style: TextStyle(),
                    )),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 3, 0, 0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'RICE',
                      style: TextStyle(),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 3, 0, 0),
                child: FlatButton(
                    onPressed: () {},
                    color: Colors.green,
                    child: Text(
                      'DOSA',
                      style: TextStyle(),
                    )),
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            height: 10.0,
            thickness: 1,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.amberAccent,
                  child: Text(
                    'History',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 100, 0, 0),
                child: RaisedButton(
                    color: Colors.amberAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, "/select");
                    },
                    child: Text('Add Custom Modes', style: TextStyle())),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
