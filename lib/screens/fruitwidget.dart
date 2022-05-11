import 'package:flutter/material.dart';
import 'package:kore_farms/screens/menu.dart';
import 'package:kore_farms/widgets/fruit_widgets/applepage.dart';
import 'package:kore_farms/widgets/fruit_widgets/bananapage.dart';
import 'package:kore_farms/widgets/fruit_widgets/melonpage.dart';
import 'package:kore_farms/widgets/fruit_widgets/orangepage.dart';

class fruitPage extends StatefulWidget {
  _fruitPageState createState() => _fruitPageState();
}

class _fruitPageState extends State<fruitPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: menu(),
        // appBar: AppBar(
        //   title: Text(
        //     "FRUITS",
        //     style: TextStyle(
        //         fontWeight: FontWeight.bold
        //     ),
        //   ),
        //   backgroundColor: Colors.teal,
        //   actions: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: Container(
        //         width: 30.0,
        //         alignment: Alignment.center,
        //         child: GestureDetector(
        //           child: Stack(
        //             children: <Widget>[
        //               const IconButton(
        //                 padding: EdgeInsets.only(
        //                   right: 10,
        //                 ),
        //                 icon: Icon(
        //                   Icons.shopping_cart_outlined,
        //                   color: Colors.black,
        //                   size: 30,),
        //                 onPressed: null,
        //               ),
        //               1 == 0
        //                   ? Container()
        //                   : Positioned(
        //                 top: 0,
        //                 right: 0,
        //                 child: Stack(
        //                   children: <Widget>[
        //                     Container(
        //                       height: 18.0,
        //                       width: 20.0,
        //                       decoration: const BoxDecoration(
        //                         shape: BoxShape.circle,
        //                         color: Colors.red,
        //                       ),
        //                       child: const Center(
        //                         child: Text("0"),
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/fruitback.jpeg"),
                  fit: BoxFit.fitHeight,
              )
          ),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 150.0,
                      width: 365.0,
                      // color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/apple.jpeg"), fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => applePage()));
                        },
                        child: Container(
                          child: Column(
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 12.0
                                    ),
                                    child: Text(
                                      "APPLE",
                                      style: TextStyle(
                                          fontSize: 35,
                                          // color: Colors.,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 150.0,
                      width: 365.0,
                      // color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/banana.jpg"), fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => bananaPage()));
                        },
                        child: Container(
                          child: Column(
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 12.0
                                    ),
                                    child: Text(
                                      "BANANA",
                                      style: TextStyle(
                                          fontSize: 35,
                                          // color: Colors.,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              Column (
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 150.0,
                      width: 365.0,
                      // color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/melon.jpeg"), fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => melonPage()));
                        },
                        child: Container(
                          child: Column(
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 12.0
                                    ),
                                    child: Text(
                                      "WATER MELON",
                                      style: TextStyle(
                                          fontSize: 35,
                                          // color: Colors.,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: Container(
                      height: 150.0,
                      width: 365.0,
                      // color: Colors.orange,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("images/oranges.webp"), fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => orangePage()));
                        },
                        child: Container(
                          child: Column(
                            children: <Widget> [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 12.0
                                    ),
                                    child: Text(
                                      "ORANGES",
                                      style: TextStyle(
                                          fontSize: 40,
                                          // color: Colors.,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: (){},
                  ),
                ],
              ),
            ],
          ),
        ),

        // backgroundColor: Colors.orange,
      ),
    );
  }
}