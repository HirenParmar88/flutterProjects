import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Image Control"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Column(
        children: [
          Image(image: AssetImage("img1.jpg"),
          height: 300,
          width: 500,),
        ],
      ),
    ),
  ));
}