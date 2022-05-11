import 'package:flutter/material.dart';
import 'package:kore_farms/pages/login.dart';
import 'package:kore_farms/pages/signup.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: Container(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/farm.webp"),
              fit: BoxFit.fitHeight
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 5,
                    left: 5,
                    top: 10,
                    bottom: 10
                  ),
                  child: Center(
                    child: Text(
                      'WELCOME TO MTU\'S FARM APP',
                      style: TextStyle(
                        fontFamily: 'Yellowtail',
                        fontSize: 23.5,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 25,
                    bottom: 25
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 350.0,
                        height: 50.0,
                        margin: EdgeInsets.only(
                          top: 10.5,
                          bottom: 10.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.5),
                        ),
                        child: MaterialButton(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.black,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 3.0,
                                horizontal: 5.0,
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()),);
                            }),
                      ),
                      Container(
                        width: 350.0,
                        height: 50.0,
                        margin: EdgeInsets.only(
                          top: 10.5,
                          bottom: 10.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.5),
                        ),
                        child: MaterialButton(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.black,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 3.0,
                                horizontal: 5.0,
                              ),
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signupPage()));
                            }),
                      ),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}