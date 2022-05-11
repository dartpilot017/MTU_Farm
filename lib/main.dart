// @dart=2.9
import 'package:flutter/material.dart';
import 'package:kore_farms/pages/welcome.dart';
// import 'package:backendless_sdk/backendless_sdk.dart';

void main() {
  runApp(const kore_farms());
}

class kore_farms extends StatelessWidget {
  const kore_farms({Key key}) : super(key: key);

  static const String APP_ID = 'YOUR_APP_ID';
  static const String ANDROID_KEY = 'YOUR_ANDROID_KEY';
  static const String IOS_KEY = 'YOUR_IOS_KEY';
  static const String JS_KEY = 'YOUR_JS_KEY';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const welcomePage(title: '',),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         drawer: Drawer(
//           child: ListView(
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   //    color: Colors.white,
//                   border: Border(
//                     top: BorderSide(color: Color(0XFF5F3FA3)),
//                   ),
//                 ),
//                 child: const ListTile(
//                   leading: Icon(Icons.home),
//                   title: Text(
//                     "Home",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 16,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//         appBar: AppBar(
//           title: Row(
//             children: const [
//               CircleAvatar(
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.person),
//               ),
//               Text("  Welcome Philip"),
//             ],
//           ),
//           actions: const [
//             Icon(Icons.search),
//             Icon(Icons.shopping_cart),
//             SizedBox(width: 10)
//           ],
//         ),
//         body: ListView(
//           children: [
//             // TODO: you can f=refactor this if you like
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               padding: const EdgeInsets.all(20),
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: const Text(
//                 "FRUITS",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               padding: const EdgeInsets.all(20),
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: const Text(
//                 "CROPS",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               padding: const EdgeInsets.all(20),
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: const Text(
//                 "VEGETABLES",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.black),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               padding: const EdgeInsets.all(20),
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               child: const Text(
//                 "BAKED FLOWERS",
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


