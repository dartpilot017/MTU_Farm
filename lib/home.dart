import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';




class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white60,
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0XFF35D4C0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                      // "Welcome, ${prefs.getString("name")}",
                        "Welcome",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                height: 150,
                // child: Swiper(
                //   itemBuilder: (BuildContext context, int index) {
                //     return Container(
                //       decoration: BoxDecoration(
                //         color: Color(0XFF0D2C54),
                //         borderRadius: BorderRadius.circular(10)
                //       ),
                //
                //     );
                //   },
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}