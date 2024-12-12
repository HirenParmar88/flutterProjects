import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Image Control"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),

      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage("img1.jpg"),
            ),
          ],
        ),
      ),
      ),
  ));
}