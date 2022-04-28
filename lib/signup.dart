import 'package:flutter/material.dart';
import 'package:kore_farms/login.dart';

class signupPage extends StatefulWidget {
  _signupPageState createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {

  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'MTU\'S FARM APP',
                  style: TextStyle(
                    fontFamily: 'Yellowtail',
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'User signup',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Container(
                  height: 50.0,
                  width: 350.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                            right: 10.5,
                            left: 10.5,
                          ),
                        child: TextField(
                          focusNode: focusName,
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.sort_by_alpha,
                            ),
                            hintText: "Enter name",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Container(
                  height: 50.0,
                  width: 350.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10.5,
                          left: 10.5,
                        ),
                        child: TextField(
                          focusNode: focusEmail,
                          controller: emailController,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            hintText: "Enter email",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Container(
                  height: 50.0,
                  width: 350.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10.5,
                          left: 10.5,
                        ),
                        child: TextField(
                          focusNode: focusPassword,
                          controller: passwordController,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Container(
                  height: 50.0,
                  width: 350.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10.5,
                          left: 10.5,
                        ),
                        child: TextField(
                          focusNode: focusConfirmPassword,
                          controller: confirmPasswordController,
                          keyboardType: TextInputType.name,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Confirm password",
                            hintStyle: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 13.0,
                        fontFamily: "SignikaRegular"),
                  ),
                    onPressed: () {
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) => loginPage())
                    );
                    },
                ),
              ),
              Container(
                width: 200.0,
                height: 50.0,
                margin: EdgeInsets.only(
                  top: 3.0,
                  bottom: 2.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.5)
                ),
                child: MaterialButton(
                  highlightColor: Colors.black,
                    splashColor: Colors.black,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 3.0,
                        horizontal: 5.0,
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    onPressed: (){}),
              )
            ],
          ),
        ),
      ),
    );
  }
}