import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, Card, CircleAvatar, Colors, Divider, MaterialApp, Scaffold;

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
              Container(width:50,
              height:50,
              color:Colors.blueAccent,),

              Container(width:50,
              height:50,
              color:Colors.deepPurpleAccent,
              ),
              ],
              ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width:50,
                height:25,
                color:Colors.greenAccent,
                ),
              Container(
                width:50,
                height:25,
                color:Colors.red,
                ),
                ],
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                Container(width:50,
                height:50,
                color:Colors.lime,),

                 Container(width:50,
                height:50,
                color:Colors.teal,),
                ],
                ),
          ],
        )  
      )
      )
    );
  }
}