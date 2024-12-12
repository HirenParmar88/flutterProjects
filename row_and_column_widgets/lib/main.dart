import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Row and Column Widgets'),
      ),
      body: Container(
        //width: 300,
        height: 300,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.start,

          //crossAxisAlignment: CrossAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){}, child: Text('Button 1'))
                  ],
                ),
                Text('R1', style: TextStyle(fontSize: 25),),
                Text('R2', style: TextStyle(fontSize: 25),),
                Text('R3', style: TextStyle(fontSize: 25),),
                Text('R4', style: TextStyle(fontSize: 25),),
                Text('R5', style: TextStyle(fontSize: 25),),
              ],
            ),
            Text('A', style: TextStyle(fontSize: 25),),
            Text('B', style: TextStyle(fontSize: 25),),
            Text('C', style: TextStyle(fontSize: 25),),
            Text('D', style: TextStyle(fontSize: 25),),
            Text('E', style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){
              //print('button pressed !!');   //print to terminal
            }, child: Text('Click'))
          ],
        ),
      ),
    ),
  ));
}

