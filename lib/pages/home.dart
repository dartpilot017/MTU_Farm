import 'package:flutter/material.dart';
import 'package:kore_farms/screens/cartwidget.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kore_farms/screens/menu.dart';
import 'package:kore_farms/screens/fruitwidget.dart';
import 'package:kore_farms/screens/vegetables.dart';




class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldState,
        drawer: menu(),
        appBar: AppBar(
          title: Text(
            " Hi there, Kofo ",
            style: TextStyle(
                fontWeight: FontWeight.bold,

            ),
          ),
          backgroundColor: Colors.green.shade700,
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
                        Icons.shopping_cart_rounded,
                        color: Colors.white,
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
                                child: Text(
                                  '0'
                                  // "$_counter"
                                ),
                              ),
                            )
                          ],
                        ),
                    ),
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => cartPage()));
                },
              ),
            ),
            ),
          ],
        ),
        backgroundColor: Colors.white60,
        body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              // Container(
              //   padding: EdgeInsets.all(10.0),
              //   height: 60,
              //   // alignment: Alignment.center,
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: <Widget>[
              //         Column(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Center(
              //                 child: GestureDetector(
              //                   child: Text(
              //                       "Vegetables",
              //                     style: TextStyle(
              //                       fontSize: 15,
              //                       color: Colors.red,
              //                       fontWeight: FontWeight.bold
              //                     ),
              //                   ),
              //                   onTap: (){},
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Padding(padding: EdgeInsets.all(4)),
              //         Column(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.only(
              //                 top: 0,
              //                 bottom: 4
              //               ),
              //               child: Center(
              //                 child: GestureDetector(
              //                   child: Text(
              //                     "Fruits",
              //                     style: TextStyle(
              //                         fontSize: 27,
              //                         color: Colors.red,
              //                         fontWeight: FontWeight.bold
              //                     ),
              //                   ),
              //                   onTap: (){},
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Padding(padding: EdgeInsets.all(8)),
              //         Column(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Center(
              //                 child: GestureDetector(
              //                   child: Text(
              //                     "Bakery",
              //                     style: TextStyle(
              //                         fontSize: 15,
              //                         color: Colors.red,
              //                         fontWeight: FontWeight.bold
              //                     ),
              //                   ),
              //                   onTap: (){},
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         Padding(padding: EdgeInsets.all(8)),
              //         Column(
              //           children: [
              //             GestureDetector(
              //               child: Text(
              //                 "Fruits",
              //                 style: TextStyle(
              //                     fontSize: 27,
              //                     color: Colors.red,
              //                     fontWeight: FontWeight.bold
              //                 ),
              //               ),
              //               onTap: (){},
              //             ),
              //           ],
              //         ),
              //         Padding(padding: EdgeInsets.all(8)),
              //         Column(
              //           children: [
              //             GestureDetector(
              //               child: Text(
              //                 "Fruits",
              //                 style: TextStyle(
              //                     fontSize: 27,
              //                     color: Colors.red,
              //                     fontWeight: FontWeight.bold
              //                 ),
              //               ),
              //               onTap: (){},
              //             ),
              //           ],
              //         ),
              //         Padding(padding: EdgeInsets.all(8)),
              //
              //       ],
              //     ),
              //   ),
              // ),
              Padding(padding: EdgeInsets.all(10.5),),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                        "Fresh Fruits",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Fresh fruits pikedup from MTU farm",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 300,
                    // alignment: Alignment.center,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Apples",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                      "N300 per/kg"
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/banana.jpg"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Banana",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                  "N300 per/kg"
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/oranges.webp"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Oranges",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/grape.png"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Grapes",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/melon.jpeg"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Water Melons",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/strawberry.jpeg"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Vegetables/Crops",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Fresh greeny vegetables, and harvested crops",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 300,
                    // alignment: Alignment.center,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/crops.webp"),
                                          fit: BoxFit.fitHeight),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Rice",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N800 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/onions.png"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Onions",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N500 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Melons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      "Fresh Melons fruits",
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    height: 300,
                    // alignment: Alignment.center,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 200.0,
                                  width: 150.0,
                                  // color: Colors.orange,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 10.0,
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/apple.jpeg"),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.circular(18.0)
                                  ),
                                ),
                                onTap: (){},
                              ),
                              Text(
                                "Strawberry",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("N300 per/kg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
              ),
        ),
        ),
    );
  }
}


Swiper textButtonSlider(context){
  return new Swiper(
      autoplay: false,
      itemBuilder: (BuildContext context, int index) {
        return new Text(
            "crops.jpeg",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          // fit: BoxFit.fitHeight,
        );
      },
      itemCount: 3,
    viewportFraction: 0.4,
    scale: 0.4,
  );
}

// Swiper textButtonSlider(context){
//   return new Swiper(
//     autoplay: true,
//     controller: swiperController,
//     itemCount: 5,
//     itemBuilder: (context, index){
//
//     },
//   );
// }


Swiper rowSlider(context) {
  return new Swiper(
    autoplay: true,
      itemBuilder: (BuildContext context, int index) {
      return new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      );
      },
      itemCount: 5);
}