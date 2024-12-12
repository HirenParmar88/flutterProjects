import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Image Control"),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,),
      ),

      body: Center(
        child: Image(
          image: AssetImage("img2.jpg"),
          height: 800,
          width: 1000,
        ),
      ),
    ),
  ));
}