import 'package:flutter/material.dart';

class ImageGaleryPage extends StatefulWidget {
  _ImageGaleryPageState createState() => _ImageGaleryPageState();
}

class _ImageGaleryPageState extends State<ImageGaleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Galery')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Text(
                    'Curug',
                    style: TextStyle(fontSize: 0.0),
                  ),
                  new Image.asset(
                    'gambar/Curug.jpg',
                    fit: BoxFit.cover,
                    width: 300.0,
                    height: 300.0,
                  ),
                  Divider(),
                  new Image.asset(
                    'gambar/TM.png',
                    fit: BoxFit.cover,
                    width: 300.0,
                    height: 300.0,
                  ),
                  Divider(),
                  new Image.asset(
                    'gambar/Kali.jpg',
                    fit: BoxFit.cover,
                    width: 300.0,
                    height: 300.0,
                  ),
                ],
              ),
              new Divider(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: new Row(
                  children: <Widget>[
                    new Text(
                      'Curug',
                      style: TextStyle(fontSize: 0.0),
                    ),
                    new Image.network(
                      'https://www.anekawisata.com/wp-content/uploads/2016/08/Tempat-Wisata-Di-Bogor.jpg',
                      fit: BoxFit.cover,
                      width: 300.0,
                      height: 300.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                    ),
                    new Image.network(
                      'https://www.anekawisata.com/wp-content/uploads/2016/08/Tempat-Wisata-Di-Bogor-Terbaru.jpg',
                      fit: BoxFit.cover,
                      width: 300.0,
                      height: 300.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                    ),
                    new Image.network(
                      'https://www.anekawisata.com/wp-content/uploads/2016/08/Tempat-Wisata-Baru-Di-Bogor.jpg',
                      fit: BoxFit.cover,
                      width: 300.0,
                      height: 300.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
