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
    var val3=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.grey,
        ),

        body: Column(children: [
          TextField(
            controller: val1,
            decoration: InputDecoration(
              hintText: "Enter Value1",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            controller: val2,
            decoration: InputDecoration(
              hintText: "Enter Value2",
              border: OutlineInputBorder(),
            ),
          ),

          TextField(
            controller: val3,
            decoration: InputDecoration(
              hintText: "Enter Value3",
              border: OutlineInputBorder(),
            ),
          ),

          ElevatedButton(onPressed: (){
            var num1=int.parse(val1.text.toString());
            var num2=int.parse(val2.text.toString());
            var num3=int.parse(val3.text.toString());
            var add=num1+num2+num3;
            print("Addition : $add");
          }, child: Text("Addition")),

          ElevatedButton(onPressed: (){
            var num1=int.parse(val1.text.toString());
            var num2=int.parse(val2.text.toString());
            var mul=num1*num2;
            print("Multi is : $mul");
          }, child: Text("Multiplication")),

          ElevatedButton(onPressed: (){
            var num1=int.parse(val1.text.toString());
            var num2=int.parse(val2.text.toString());
            var sub=num1-num2;
            print("Sub is : $sub");
          }, child: Text("Substraction")),

          ElevatedButton(onPressed: (){
            var num1=int.parse(val1.text.toString());
            var num2=int.parse(val2.text.toString());
            var div=num1/num2;
            print("Division is : $div");
          }, child: Text("Division")),
        ],),
      ),
    );
  }
}
