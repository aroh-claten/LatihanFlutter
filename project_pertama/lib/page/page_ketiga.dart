import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page_keempat.dart';

class PageKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Menu Log In'),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),

        TextFormField(
              decoration: InputDecoration(
                  //hintText: 'Masukan Username',
                  labelText: 'Enter your username'
                  //icon: Icon(Icons.person)
              ),
            ),
            TextFormField( obscureText: true,
              decoration: InputDecoration(
                  //hintText: 'Masukan Password',
                  labelText: 'Enter your password'
                 // icon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 20,),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              minWidth: double.infinity,
              onPressed: () {
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
              },
              child: Text('LOGIN'),

            ),

            SizedBox(height: 5,),

            MaterialButton(
              color: Colors.white,
              textColor: Colors.black,
              minWidth: double.infinity,
              onPressed: () {
                //Tambahkan Kode Disini
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKeempat())); // memanggil page ke empat
              },
              child: Text('Not a member? Sign up now'),

            ),

          ],
        ),

      ),
    );
  }
}