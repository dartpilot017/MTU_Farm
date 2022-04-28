import 'package:flutter/material.dart';
import 'package:kore_farms/login.dart';

void main() {
  runApp( kore_farms());
}

class kore_farms extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginPage(),
    );
  }
}




