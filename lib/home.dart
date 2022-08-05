import 'package:flutter/material.dart';
import 'package:kore_farms/screens/cartwidget.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kore_farms/screens/menu.dart';
import 'package:kore_farms/screens/fruitwidget.dart';




class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: menu(),
        appBar: AppBar(
          title: Text(
            "MTU\'s Farm",
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
                      // onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => cartPage()))},
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
        // backgroundColor: Colors.white60,
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150.0,
                  width: 350.0,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                    ),
                  child: MaterialButton(
                    // splashColor: Colors.orange,
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => fruitPage()))
                    },
                    child: Card(
                      // color: Colors.orange.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                        color: Colors.orange,
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
                                      "FRUITS",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
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
                ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150.0,
                  width: 350.0,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: MaterialButton(
                    // splashColor: Colors.orange,
                    onPressed: ()=>{
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => fruitPage()))
                    },
                    child: Card(
                      // color: Colors.orange.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      color: Colors.green,
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
                                "VEGETABLES",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150.0,
                  width: 350.0,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: MaterialButton(
                    // splashColor: Colors.orange,
                    onPressed: ()=>{
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => fruitPage()))
                    },
                    child: Card(
                      // color: Colors.orange.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      color: Colors.greenAccent,
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
                                  "CROPS",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150.0,
                  width: 350.0,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: MaterialButton(
                    // splashColor: Colors.orange,
                    onPressed: ()=>{
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => fruitPage()))
                    },
                    child: Card(
                      // color: Colors.orange.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      color: Colors.yellowAccent,
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
                                  "MTU BAKERY",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
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
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 150.0,
                  width: 350.0,
                  // color: Colors.orange,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: MaterialButton(
                    // splashColor: Colors.orange,
                    onPressed: ()=>{
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => fruitPage()))
                    },
                    child: Card(
                      // color: Colors.orange.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      color: Colors.cyan,
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
                                  "MTU WATER",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
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
              ],
            ),
              ],
            ),
        ),
    );
  }
}