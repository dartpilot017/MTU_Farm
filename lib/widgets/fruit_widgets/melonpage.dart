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
        // drawer: back(),
        appBar: AppBar(
          title: Text(
            "Apple",
          ),
          backgroundColor: Colors.green.shade700,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:  IconButton(
                // padding: EdgeInsets.only(
                //   right: 10,
                // ),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 22,),
                  onPressed: (){Navigator.pop(context);}
                // onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => cartPage()))},
              ),
            )
          ],
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5),),
              Container(
                height: 250,
                width: 350,
                // color: Colors.brown,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 50.0,
                        top: 15.0,
                        bottom: 15.0,
                        left: 15.0
                    ),
                    child: Text(
                      "Apples",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 50
                        ),
                        child: Text(
                          "#160 per/kg",
                          style: TextStyle(
                            fontSize: 28,
                            // fontWeight: FontWeight.w600
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Padding(
                  padding: EdgeInsets.only(
                      right: 8.0,
                      left: 15,
                      bottom: 5.0
                  ),
                  child: Text(
                    "Grapes will provide natural nutrients. "
                        "The Chemical in organic grapes which can be healthier hair and skin. "
                        "It can be improve Your heart health. Protect your body from",
                    style: TextStyle(
                        fontSize: 15
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}