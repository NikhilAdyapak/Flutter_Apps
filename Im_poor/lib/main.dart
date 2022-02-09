import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('I am poor'),
      ),
      body:
       Center(child: 
        Image(
           image: AssetImage('assert.jpg'),
         )

      ) ,
      ),
    ),
  );
}


  

