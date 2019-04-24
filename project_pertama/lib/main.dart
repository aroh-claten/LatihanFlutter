import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page/page_ketiga.dart';
import 'page/page_keempat.dart';

void main() => runApp(HalamanUtama());
class HalamanUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuHome(),debugShowCheckedModeBanner: false,
    );
  }
}
class MenuHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Home'),
        backgroundColor: Colors.blue,
      ),
      //row
      //column
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            new Text('Selamat Datang di Aplikasi Pertama Flutter',
              style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0) ,),
            //flat button
            //Raised button
            //material button
            SizedBox(height: 20,),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                //Tambahkan Kode Disini
                Fluttertoast.showToast(
                    msg: "Anda Berhasil Login",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              },child: Text('Login'),
            ),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                //Tambahkan Kode Disini
                //Navigator
                //Push dan pop
                //Pindah dari kelas class A ke class B
                //Pop dari kelas class B ke class A
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKedua())); // memanggil page ke dua


              },child: Text('Page 2'),
            ),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                //Tambahkan Kode Disini
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga()));//memanggil page ke tiga di beda file

              },child: Text('Page 3'),
            ),
        ],
        ),

      ),
    );
  }
}



class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
        backgroundColor: Colors.blue,
      ),
      //row
      //column
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            new Icon(Icons.card_travel, size: 50, color: Colors.blue,),
            SizedBox (height: 350,),
            new Text('Welcome to Twitter.',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),textAlign: TextAlign.center,),
            new Text('Get realtime update about what matters to you',
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0),),
            //flat button
            //Raised button
            //material button
            SizedBox(height: 20,),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              minWidth: 250,
              onPressed: () {
                //Tambahkan Kode Disini
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKeempat()));

              }, child: Text('Sign Up'),
            ),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              minWidth: 250,
              onPressed: () {
                //Tambahkan Kode Disini
                //Navigator
                //Push dan pop
                //Pindah dari kelas class A ke class B
                //Pop dari kelas class B ke class A
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga())); // memanggil page ke dua

              }, child: Text('Log in'),
            ),

          ],
        ),

      ),
    );
  }

}
