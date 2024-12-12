import 'package:flutter/material.dart';

void main(){
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    var val1=TextEditingController();
    var val2=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.purpleAccent,
        ),

        body: Column(
          children: [
            TextField(
              controller: val1,
              decoration: InputDecoration(
                hintText: "Enter Val 1",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: val2,
              decoration: InputDecoration(
                hintText: "Enter Val 2",
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
              var num3=int.parse(val1.text.toString());
              var num4=int.parse(val2.text.toString());
              var mul=num3*num4;
              print("Multi is :$mul");
            }, child: Text("Multi")),

            ElevatedButton(onPressed: (){
              var x=int.parse(val1.text.toString());
              var y=int.parse(val2.text.toString());
              var sub=x-y;
              print("Subst is :$sub");
            }, child: Text("Substraction")),

            ElevatedButton(onPressed: (){
              var a=int.parse(val1.text.toString());
              var b=int.parse(val2.text.toString());
              var div=a/b;
              print("Division is :$div");
            }, child: Text("Division")),
          ],
        ),
      ),
    );
  }
}
