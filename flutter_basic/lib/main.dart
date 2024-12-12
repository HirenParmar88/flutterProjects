import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.limeAccent,
          child: Text("GLS University"),
        ),
      )

    ),
  ));
}