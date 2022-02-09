import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, Card, CircleAvatar, Colors, Divider, MaterialApp, Scaffold;
import 'package:flutter/src/material/icons.dart';
void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
   {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:<Widget>[
          CircleAvatar(
            radius:50.0,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('images/asset.jpg'),//NetworkImage(''),
          ),
        Text('Nikhil Adyapak',
        style:TextStyle(
          fontSize:40.0,
          fontWeight: FontWeight.bold,
           color:Colors.white,
           letterSpacing: 2.5
           //,fontFamily: 'Pacifico'
          ),
          ),
        Text('FLUTTER DEVELOPER',
        style:TextStyle(
          color: Colors.white,fontSize: 20.0,
          letterSpacing: 2.5
          ),
          ),
 SizedBox(width:double.infinity,
 height:10,),

 SizedBox(
   height:20.0,
   width:150.0,
   child:Divider(color:Colors.white,),
 ),

 Card(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal:25.0 ),
    color:Colors.white,
    child:Padding(
      padding:EdgeInsets.all(15.0),
                    child: Row(
        children: <Widget>[
          Icon(Icons.call,color:Colors.teal,),
          Text('+91 7349304990')
        ],
        ),
        ),
      ),
 SizedBox(width:double.infinity,
 height:10,),

SizedBox(
   height:20.0,
   width:150.0,
   child:Divider(color:Colors.white,),
 ),

 Card(
      margin: EdgeInsets.symmetric(vertical: 10.0,horizontal:25.0 ),
    color:Colors.white,
    child:Padding(
      padding:EdgeInsets.all(15.0),
                    child: Row(
        children: <Widget>[
          Icon(Icons.email,color:Colors.teal,),
          Text('nikhiladyapak31@gmail.com')
        ],
        ),
        ),
      ),



          ]
 )     


      
          )
          )
          ) ;
  }
}



