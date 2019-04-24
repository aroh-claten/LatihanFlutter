import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class PassingValue extends StatefulWidget {
  PassingValue({Key key}) : super(key: key);

  _PassingValueState createState() => _PassingValueState();
}

class _PassingValueState extends State<PassingValue> {
  TextEditingController _etTitle =new TextEditingController();
  TextEditingController _etDeskripsi = new TextEditingController();
  @override
  void initState(){
    
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passing Value'),
        backgroundColor: Colors.green,
      ),
     body: new Form(
       child: new Column(
         children: <Widget>[
           TextFormField(

             decoration: InputDecoration(
               icon: Icon(Icons.message),
               hintText: 'Input Judul'
             ),
             controller: _etTitle,
           ),
           TextFormField(

             decoration: InputDecoration(
               icon: Icon(Icons.message),
               hintText: 'Input Deskripsi'
             ),
             controller: _etDeskripsi,
           ),
           SizedBox(height: 30.0,),
           MaterialButton(
             onPressed: (){
               //kirim data dan pindah kelas
               Navigator.push(context, 
               MaterialPageRoute(
                 builder: (context) => DetailPassingValue(
                   _etTitle.text, _etDeskripsi.text))
               );

             },
             child: Text('Submit'),
             color: Colors.green,
             textColor: Colors.white,
           )
         ],
       ),
     ),
    );
  }
}
class DetailPassingValue extends StatelessWidget {
  final String title;
  final String description;

  DetailPassingValue(this.title, this.description);

  /*DetailPassingValue({Key key}) : super(key: key);

  _DetailPassingValueState createState() => _DetailPassingValueState();
}

class _DetailPassingValueState extends State<DetailPassingValue> {*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Detail Passing Page'),
         backgroundColor: Colors.green,
       ),
       body: new Center(
         child: Column(
           children: <Widget>[
             Text('{$title}', style: TextStyle(fontSize: 16.0),),
             Text('{$description}', style: TextStyle(fontSize: 16.0),),
           ],
         ),
       ),
    );
  }
}