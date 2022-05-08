import 'package:flutter/material.dart';
import 'package:kore_farms/home.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal.shade300,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 10.0,
                  left: 17.0
                ),
                child: Row(
                  children: <Widget>[
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
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Center(
            //   child: Text(
            //     "Welcome",
            //     style: TextStyle(
            //         fontWeight: FontWeight.bold,
            //         fontStyle: FontStyle.italic,
            //         fontSize: 25,
            //         color: Colors.white,
            //         fontFamily: "fonts/SourceSansPro-Regular.ttf"
            //     ),
            //   ),
            // ),
            DrawerHeader(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/tu.jpeg")
                    ),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home", style: TextStyle(color: Colors.white)),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
              },
            ),
            ListTile(
                leading: Icon(Icons.verified_user),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.receipt_long),
              title: Text("Order History", style: TextStyle(color: Colors.white),),
              onTap: ()=>{Navigator.of(context).pop()},
            ),

          ],
        ),
      ),
    );
  }
}



