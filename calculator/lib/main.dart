import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator'.padRight(100),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String output="0";

  String _output="0";
  double num1=0.0;
  double num2=0.0;
  String operand="";

  buttonPressed(String buttonText){
    if(buttonText=="AC")
    {
      _output="0";
      num1=0.0;
      num2=0.0;
    }
    else if(buttonText=="+" || buttonText=="-" || buttonText=="X" || 
    buttonText=="/" || buttonText=="X10^" || buttonText=="%" || buttonText=="<=")
    {
      num1=double.parse(output);
      operand=buttonText;
      _output="0";

    }
    else if(buttonText=="."){
      if(_output.contains(".")){
        print("already contains a decimal");
        return;
      }
      else
      {
        _output+=buttonText;
      }
    }

    else if(buttonText=="<=")
    {
      num1=0;
      num2=0;
      _output="";
    }

    else if(buttonText=="ANS")
    {
      num2=double.parse(output);
      if(operand=="+")
      {
        _output=(num1+num2).toString();
      }

      if(operand=="-")
      {
        _output=(num1-num2).toString();
      }

      if(operand=="X")
      {
        _output=(num1*num2).toString();
      }

      if(operand=="/")
      {
        _output=(num1/num2).toString();
      }

      if(operand=="%")
      {
        _output=(num1/100.0).toString();
      } 

      if(operand=="X10^")
      {
        _output=(num1*pow(10,num2.toInt())).toString();
      } 

      num1=0.0;
      num2=0.0;
      operand="";

    }

    else
    {
      _output+=buttonText;
    }

    print(_output);
    setState(() {
      output=double.parse(_output).toStringAsFixed(4);
    });
  }

  Widget buttons(String buttonText){
    return new Expanded(
       child: new OutlineButton(
          padding:new EdgeInsets.all(20.0) ,
          child: new Text(buttonText,
          style:TextStyle(
          fontSize:24.0,
          fontWeight: FontWeight.bold
          ),
          ),
              onPressed: () =>
                buttonPressed(buttonText),
              ),
          );    
    }
  
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: new Container(

        child:new Column(children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: new EdgeInsets.symmetric(
              vertical:24.0,
              horizontal:12.0,
            ),

            child: new Text(output,style: new TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
            ),
            )
            ),

          new Expanded(
            child: new Divider(),
            ),
        
        Column(
          children: <Widget>[
            new Row(children: [
              buttons("AC"),
              buttons("<="),
              buttons("%"),
              buttons("/"),
            ],
            ),

            new Row(children: [
              buttons("7"),
              buttons("8"),
              buttons("9"),
              buttons("X"),
            ],
            ),

            new Row(children: [
              buttons("4"),
              buttons("5"),
              buttons("6"),
              buttons("-"),
            ],
            ),

            new Row(children: [
              buttons("1"),
              buttons("2"),
              buttons("3"),
              buttons("+"),
            ],
            ),

            new Row(children: [
              buttons("0"),
              buttons("."),
              buttons("X10^"),
              buttons("ANS"),
            ],
            ),
            ],
          ),
        ]),
      )
    );
  }
}
