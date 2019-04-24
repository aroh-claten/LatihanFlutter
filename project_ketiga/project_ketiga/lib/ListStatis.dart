import 'package:flutter/material.dart';

class ListStatis extends StatefulWidget {
  ListStatis({Key key}) : super(key: key);

  _ListStatisState createState() => _ListStatisState();
}

class _ListStatisState extends State<ListStatis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Statis'),
        backgroundColor: Colors.blue,

      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue, size: 35.0,),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.email, color: Colors.blue, size: 35.0,),
            title: Text('Email'),
          ),
          ListTile(
            leading: Icon(Icons.map, color: Colors.blue, size: 35.0,),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.album, color: Colors.blue, size: 35.0,),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.alarm, color: Colors.blue, size: 35.0,),
            title: Text('Alarm'),
          ),
        ],
      ),

    );
  }
}