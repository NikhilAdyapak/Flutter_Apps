import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:Text('Dice'),
          backgroundColor: Colors.lightBlue[500],
          ),
          body: SafeArea(child: Column(
             mainAxisAlignment: MainAxisAlignment.center,   
             children: <Widget>[
               DicePage(),
             ],
             ),
             ),
          )
  )
  );
}

class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() =>_DicePageState();

}

class _DicePageState extends State<DicePage>{
  var leftdnum=1;
  var rightdnum=2;
  var backdnum=3;
  @override
  Widget build(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 10,height: 10,),
        Expanded(
          child: 
          FlatButton(splashColor: Colors.red,
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          onPressed: (){
            setState(() {
              leftdnum=Random().nextInt(6)+1;
              rightdnum=Random().nextInt(6)+1;
              backdnum=Random().nextInt(6)+1;
            },
            );
          },

           child: Image(
            image: AssetImage('images/dice$leftdnum.png',),
            
            ),
          ),
        ),
        Expanded(
          child: 
          FlatButton(splashColor: Colors.red,
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          onPressed: (){
            setState(() {
              leftdnum=Random().nextInt(6)+1;
              rightdnum=Random().nextInt(6)+1;
              backdnum=Random().nextInt(6)+1;
            },
            );
          },

           child: Image(
            image: AssetImage('images/dice$rightdnum.png',),
            
            ),
          ),
        ),

        Expanded(
          child: 
          FlatButton(splashColor: Colors.red,
          padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
          onPressed: (){
            setState(() {
              leftdnum=Random().nextInt(6)+1;
              rightdnum=Random().nextInt(6)+1;
              backdnum=Random().nextInt(6)+1;
            },
            );
          },

           child: Image(
            image: AssetImage('images/dice$backdnum.png',),
            
            ),
          ),
        ),
      ],
    );
  }
}
        
        
        