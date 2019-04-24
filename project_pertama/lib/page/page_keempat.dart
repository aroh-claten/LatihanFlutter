import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'page_ketiga.dart';

class PageKeempat extends StatelessWidget {
  TextEditingController etNama = new TextEditingController();
  TextEditingController etEmail = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Menu Register'),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),

        TextFormField(
              controller: etNama,
              decoration: InputDecoration(
                  hintText: 'Input Nama',
                  labelText: 'Fullname',
                  icon: Icon(Icons.person)
              ),
            ),

            TextFormField(
              controller: etEmail,
              decoration: InputDecoration(
                  hintText: 'Input Email',
                  labelText: 'Email',
                  icon: Icon (Icons.email)
              ),
            ),

            TextFormField(
              controller: etPassword,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Input Password',
                  labelText: 'Password',
                  icon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 20,),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              minWidth: double.infinity,
              onPressed: () {
                //Tambahkan Kode Disini

                if(etNama.text.isEmpty){
                  Fluttertoast.showToast(
                      msg: "Nama harus isi!!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }else if (etEmail.text.isEmpty){
                  Fluttertoast.showToast(
                      msg: "Email harus isi",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }else if (etPassword.text.isEmpty){
                  Fluttertoast.showToast(
                      msg: "Password harus isi",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }else{
                  Fluttertoast.showToast(
                      msg: "Username : " + etEmail.text + " Password : " + etPassword.text,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }

              },
              child: Text('REGISTER'),

            ),

            MaterialButton(
              color: Colors.white,
              textColor: Colors.black,
              minWidth: double.infinity,
              onPressed: (){
                //Tambahkan Kode Disini
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageKetiga())); // memanggil page ke tiga

              }, child: Text('Already registerd! Login Me.'),
            ),
            SizedBox(height: 20,),

          ],
        ),

      ),
    );
  }
}