import 'package:flutter/material.dart';

/* Flutter ScrollView Widgets */

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.redAccent,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                  ),
                ],
              ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              //width: 200,
              color: Colors.orange,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              //width: 200,
              color: Colors.lightGreen,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              //width: 200,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              //width: 200,
              color: Colors.grey,
            )
          ],
        ),
        ),
      ),
    ),
  ));
}

/*
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),

      /*body: Container(
        child: ElevatedButton(
          child: Text('Click me'),
          onPressed: (){
          print('Elevated Button Clicked !!!');
          }
        ),
      ),*/

      body: Center(
        child: InkWell(
          onTap: (){
            print('Tapped on container');
          },
          onLongPress: (){
            print('Long Pressed on Container');
          },
          onDoubleTap: (){
            print('On Double tap pressed container');
          },
    ),
  ));
}*/

