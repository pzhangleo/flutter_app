import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.red
            ),
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(8.0),
              bottom: Radius.circular(8.0)
            ),
          ),
          child: Text('Open route',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}