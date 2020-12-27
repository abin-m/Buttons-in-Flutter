import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int value = 0;
  void _onPressed() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Buttons In Flutter'),
        backgroundColor: Colors.green,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: _onPressed,
              child: Text('Material Button'),
              textColor: Colors.white,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            RaisedButton(
              onPressed: _onPressed,
              child: Text('Raised Button'),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(
              onPressed: _onPressed,
              child: Text('Flat Button'),
              color: Colors.black,
              textColor: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _onPressed,
              color: Colors.black,
            ),
            Text(
              'value ${value}',
            )
          ],
        ),
      ),
    );
  }
}
