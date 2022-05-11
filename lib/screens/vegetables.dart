import 'package:flutter/material.dart';

class vegetablePage extends StatefulWidget {
  _vegetablePageState createState() => _vegetablePageState();
}

class _vegetablePageState extends State<vegetablePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.teal,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/crop.jpeg"),
                  fit: BoxFit.fitHeight
              )
          ),
          child: ListView(
            children: [
              Container(

              ),
            ],
          ),
        ),
      ),
    );
  }
}