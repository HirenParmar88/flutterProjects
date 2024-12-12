import 'package:flutter/material.dart';

void main() {
  runApp(const myHome());
}

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    var val1 = TextEditingController();
    var val2 = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.blueAccent,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: val1,
              decoration: InputDecoration(
                hintText: "Enter Number1 ",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                    Icons.person
                ),
              ),
            ),
            TextField(
              controller: val2,
              decoration: InputDecoration(
                hintText: "Enter Number2",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                    Icons.person
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(onPressed: (){
                  var num1 = int.parse(val1.text.toString());
                  var num2 = int.parse(val2.text.toString());

                  var add = num1 + num2;
                  print("Addition : $add");

                }, child: Text("Addition")),

            ElevatedButton(onPressed: (){
              var num1=int.parse(val1.text.toString());
              var num2=int.parse(val2.text.toString());
              var sub=num1-num2;
              print("Substraction : $sub");
            }, child: Text("Substraction")),

            ElevatedButton(onPressed: (){
              var num1=int.parse(val1.text.toString());
              var num2=int.parse(val2.text.toString());
              var mul=num1*num2;
              print("Multiplication : $mul");
            }, child: Text("Multiplication")),

            ElevatedButton(onPressed: (){
              var num1=int.parse(val1.text.toString());
              var num2=int.parse(val2.text.toString());
              var div=num1/num2;
              print("Division : $div");
            }, child: Text("Division")),

            ],
            ),
          ],
        ),
      ),
    );
  }
}



