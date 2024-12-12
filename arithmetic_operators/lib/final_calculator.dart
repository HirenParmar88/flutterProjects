import 'package:flutter/material.dart';

void main(){
  runApp(myapps());
}

class myapps extends StatefulWidget {
  const myapps({super.key});

  @override
  State<myapps> createState() => _myappsState();
}

class _myappsState extends State<myapps> {
  @override
  Widget build(BuildContext context) {
    var val1=TextEditingController();
    var val2=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),

        body: Column(
          children: [
            TextField(
              controller: val1,
              decoration: InputDecoration(
                hintText: "Enter Any Number",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: val2,
              decoration: InputDecoration(
                hintText: "Enter Any Number",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: (){
              var num1=int.parse(val1.text.toString());
              var num2=int.parse(val2.text.toString());
              var add=num1+num2;
              print("Addition is :$add");
            }, child: Text("Addition")),

            ElevatedButton(onPressed: (){
              var x=int.parse(val1.text.toString());
              var y=int.parse(val2.text.toString());
              var mul=x*y;
              print("Multiplication is :$mul");
            }, child: Text("Multiplication")),

            ElevatedButton(onPressed: (){
              var a=int.parse(val1.text.toString());
              var b=int.parse(val2.text.toString());
              var sub=a-b;
              print("Substraction is :$sub");
            }, child: Text("Substraction")),

            ElevatedButton(onPressed: (){
              var hiren=int.parse(val1.text.toString());
              var hiren1=int.parse(val2.text.toString());
              var div=hiren/hiren1;
              print("Division is: $div");
            }, child: Text("Division")),
          ],
        ),
      ),
    );
  }
}
