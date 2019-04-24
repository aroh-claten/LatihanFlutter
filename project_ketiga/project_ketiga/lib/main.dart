import 'package:flutter/material.dart';
import 'MenuUtama.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Row Flutter'),
//         backgroundColor: Colors.green,
//       ),
//       drawer: Drawer(
        
//         ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             new Icon(Icons.home, size: 100.0,),
//             new Icon(Icons.list, size: 100.0,),
//             new Icon(Icons.person, size: 100.0,),
//           ],
//         ),
//       ),
//     );
//   }
// }
