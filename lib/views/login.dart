import 'package:flutter/material.dart';
import 'package:login/views/welcome.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Login Page"),
              backgroundColor: Colors.lightGreen,
            ),
            backgroundColor: Colors.white,
            body: ListView(shrinkWrap: true, children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
                Stack(children: <Widget>[
                  Container(
                      child: Image(
                    height: 300,
                    width: 400,
                    image: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4E0BAQHrP76ZeUc36w/company-logo_200_200/0/1604045815454?e=2159024400&v=beta&t=pXzqyezqYEvaGYeu3g7pQMz1bQuuC5VgdueKUkJ1iPA'),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 280, left: 25, right: 25),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.lightGreen,
                          ),
                          hintText: "Enter valid email id as abc@gmail.com",
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.lightGreen),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 360, left: 25, right: 25),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.lightGreen,
                          ),
                          hintText: "ENTER YOUR PASSWORD",
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(color: Colors.lightGreen),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 125, top: 425),
                    child: Text("Forgot Password",
                        textAlign: TextAlign.end,
                        style:
                            TextStyle(fontSize: 18, color: Colors.lightGreen)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 500, left: 100, right: 100),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          border: Border(
                            top: BorderSide(
                                width: 0.02, color: Color(0xFFFFFFFF)),
                            left: BorderSide(
                                width: 0.02, color: Color(0xFFFFFFFF)),
                            right: BorderSide(
                                width: 0.02, color: Color(0xFF000000)),
                            bottom: BorderSide(
                                width: 0.02, color: Color(0xFF000000)),
                          )),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SubmitPage()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 85, top: 625),
                    child: Text("New User? Create Account",
                        textAlign: TextAlign.end,
                        style:
                            TextStyle(fontSize: 18, color: Colors.grey[700])),
                  ),
                ]),
              ]),
            ])));
  }
}0
