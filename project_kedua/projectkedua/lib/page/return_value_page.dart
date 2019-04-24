import 'package:flutter/material.dart';
class ReturnValuePage extends StatefulWidget {
  ReturnValuePage({Key key}) : super(key: key);

  _ReturnValuePageState createState() => _ReturnValuePageState();
}

class _ReturnValuePageState extends State<ReturnValuePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Return Value'),
         backgroundColor: Colors.green,
       ),

       body: Center(
         child: RaisedButton(onPressed: (){
           //Kode ketika buttonnya di klik
           _navigateAndDisplaySelection(context);
         },child: Text('Pickan Option, Any Option !'),
         ),
       ),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async{
    final result = await Navigator.push(context, MaterialPageRoute(
      builder: (context)=>PagePilihan()
    ));

    Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result"),));
  }
}

class PagePilihan extends StatelessWidget {
  const PagePilihan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Pilihan'),
        backgroundColor: Colors.green,
    ),

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(onPressed: () {
              Navigator.pop(context, 'Anda Memilih Yes');
            },child: Text('Yes'),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: (){
                Navigator.pop(context, 'Anda Memilih No');
              },child: Text('No'),),
            ),
        ],
      ),
    )
    );
  }
}