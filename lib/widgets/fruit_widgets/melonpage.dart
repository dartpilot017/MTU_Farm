import 'package:flutter/material.dart';
import 'package:kore_farms/screens/menu.dart';

class melonPage extends StatefulWidget {
  _melonPageState createState() => _melonPageState();
}

class _melonPageState extends State<melonPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: menu(),
        appBar: AppBar(
          title: Text(
            "WATER MELONS",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.teal,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 35.0,
                alignment: Alignment.center,
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      const IconButton(
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                          size: 30,),
                        onPressed: null,
                      ),
                      1 == 0
                          ? Container()
                          : Positioned(
                        top: 0,
                        right: 0,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 20.0,
                              width: 20.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Text("0"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}