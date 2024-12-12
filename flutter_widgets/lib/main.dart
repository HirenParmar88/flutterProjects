import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      /*body: Center(
        child: Text('Hello World',style: TextStyle(fontSize: 25),),
      ),*/
      body:Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blueGrey,
          child: Center(child: Text('This is center of container', style: TextStyle(color: Colors.white),)),
        ),
      )
    ),
  ));
}


