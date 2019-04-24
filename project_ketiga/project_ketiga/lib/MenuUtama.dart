import 'package:flutter/material.dart';
import 'RowPage.dart';
import 'ColumnPage.dart';
import 'RowColumnPage.dart';
import 'ImageGaleryPage.dart';
import 'ListStatis.dart';
import 'ListDinamis.dart';

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menu Utama"),
        ),
        body: new Center(
          child: Text(
            'Selamat Datang di Menu Utama',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text('Row'),
                leading: Icon(Icons.list, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new RowPage())),
              ),
              ListTile(
                title: Text('Column'),
                leading: Icon(Icons.person, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new ColumnPage())),
              ),
              ListTile(
                title: Text('Row and Coloumn'),
                leading: Icon(Icons.star, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new RowColumnPage())),
              ),
              ListTile(
                title: Text('Image Galery'),
                leading: Icon(Icons.image, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new ImageGaleryPage())),
              ),
              ListTile(
                title: Text('List Statis'),
                leading: Icon(Icons.list, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new ListStatis())),
              ),
              ListTile(
                title: Text('Dinamis'),
                leading: Icon(Icons.list, color: Colors.blue, size: 35.0,),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new ListDinamis())),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
