import 'package:flutter/material.dart';
import 'package:kore_farms/signup.dart';
import 'package:kore_farms/home.dart';
import 'package:kore_farms/forgot_password.dart';

class loginPage extends StatefulWidget {
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey =
  new GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        key: _mainScaffoldKey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('images/tu.jpeg'),
              ),
              Text(
                'MTU\'S FARM APP',
                style: TextStyle(
                  fontFamily: 'Yellowtail',
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'User login',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 15.0,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              Card(
                elevation: 2.0,
                // color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.5,
                ),
                child: Container(
                  height: 50.0,
                  width: 450.0,
                  child: Column(
                    children: <Widget> [
                      Padding(
                          padding: EdgeInsets.only(
                            right: 10.5,
                            left: 10.5,
                          ),
                        child: TextField(
                          focusNode: focusEmail,
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 20.5,
                            ),
                            hintText: "Enter email",
                            hintStyle: TextStyle(
                              fontSize: 16.0
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // child: ListTile(
                //   leading: Icon(
                //     Icons.email,
                //     color: Colors.teal.shade900,
                //   ),
                //   title: Text(
                //     '+',
                //     style: TextStyle(
                //       fontSize: 20.0,
                //       fontFamily: 'SourceSansPro',
                //       color: Colors.teal.shade900,
                //     ),
                //   ),
                // ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Container(
                  height: 50.0,
                  width: 450.0,
                  child: Column(
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10.5,
                          left: 10.5,
                        ),
                        child: TextField(
                          focusNode: focusPassword,
                          controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          obscureText: true,
                          obscuringCharacter: "*",
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 20.5,
                            ),
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                                fontSize: 16.0
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // child: ListTile(
                //   leading: Icon(
                //     Icons.lock_outline_rounded,
                //     color: Colors.teal.shade900,
                //   ),
                //   title: Text(
                //     'a',
                //     style: TextStyle(
                //       fontSize: 20.0,
                //       fontFamily: 'SourceSansPro',
                //       color: Colors.teal.shade900,
                //     ),
                //   ),
                // ),
              ),
              Container(
                child: TextButton(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 13.0,
                        fontFamily: "SignikaRegular"),
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => forgotPasswordPage()));
                  },
                ),
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
                        "Login",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),);
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
                          fontSize: 20.0,
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
          ),
        ),
      ),
    );
  }
}