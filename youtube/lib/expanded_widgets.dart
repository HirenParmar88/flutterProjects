import 'package:flutter/material.dart';

void main()
{
  return runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded Widgets"),
        ),

        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
              //width: 100,
              height: 100,
              color: Colors.blue,
            ),
            ),
            Expanded(
              flex: 4,
              child: Container(
              color: Colors.deepOrange,
              height: 100,
              //width: 100,
            ),
            ),
            Expanded(
              flex: 4,
              child: Container(
              color: Colors.green,
              height: 100,
              //width: 100,
            ),),
            Expanded(
              flex: 4,
              child: Container(
              color: Colors.yellow,
              height: 100,
              //width: 100,
            ),),

          ],
        ),
      ),
    );
  }
}
