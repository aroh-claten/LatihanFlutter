import 'package:flutter/material.dart';

class RowColumnPage extends StatefulWidget {
  RowColumnPage({Key key}) : super(key: key);

  _RowColumnPageState createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column Page'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Home',
                style: TextStyle(fontSize: 20.0),),
                new Icon(Icons.home,color: Colors.blue, size: 50.0,),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Email',
                style: TextStyle(fontSize: 20.0),),
                new Icon(Icons.email, color: Colors.blue, size: 50.0,),
              ],
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('Apps',
                style: TextStyle(fontSize: 20.0),),
                new Icon(Icons.apps,color: Colors.blue, size: 50.0,),
              ],
            ),
          ],
        ),
      ),
      
    );
  }
}