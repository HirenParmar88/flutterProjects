import 'package:flutter/material.dart';
import 'package:oddeven_fun_navigator/listView.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    var arrColors=[Colors.greenAccent,
    Colors.blue,
      Colors.grey,
      Colors.green,
      Colors.pink,
      Colors.orange,
      Colors.purpleAccent,
      Colors.black45];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
          Container(
            height: 200,
            child:GridView.count(crossAxisCount: 5,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
              ],),
              //GridView.extent(maxCrossAxisExtent: 100),

          ),
    ],),
      ),
    );
  }
}
