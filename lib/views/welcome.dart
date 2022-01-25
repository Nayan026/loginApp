import 'package:flutter/material.dart';
import'package:login/views/welcome.dart';


class SubmitPage extends StatefulWidget {

  _SubmitPageState createState() => _SubmitPageState ();
}
class _SubmitPageState extends State<SubmitPage> {

  Widget build(BuildContext context) {
    return   MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(shrinkWrap: true, children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Stack(children: <Widget>[

                    Container(
                        height: 100.0,
                        width: double.infinity,
                        color: Colors.lightGreen,
                        padding: EdgeInsets.all(30),
                        child: Text(
                          'Home Page',
                          style: TextStyle(

                            fontWeight: FontWeight.bold,

                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        )
                    ),

                    Container(

                        margin: EdgeInsets.only(top: 400,left: 100,right:100),
                        padding: const EdgeInsets.all(30.0),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.all(Radius.circular(100))
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SubmitPage()),
                            );
                          },

                          child: Center(
                            child :Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white,),),
                          ),


                        ) ),

                  ],
                  ) ,
                ]),
          ]),
        ) );

  }
}