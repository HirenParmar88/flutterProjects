import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}
class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController num1Controller = new TextEditingController();
    TextEditingController num2Controller = new TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: Center(
                  child: Text(
                    "SET-3",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: num1Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Number - 1 ",
                      hintStyle:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: num2Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Number - 2",
                      hintStyle:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 500,
                child: Center(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          int num1 = int.parse(num1Controller.text.toString());
                          int num2 = int.parse(num2Controller.text.toString());
                          int ans = num1+num2;
                          print("Sum :- $ans");
                        },
                        child: Text("Add"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          int num1 = int.parse(num1Controller.text.toString());
                          int num2 = int.parse(num2Controller.text.toString());
                          int ans = num1-num2;
                          print("Sub :- $ans");
                        },
                        child: Text("Sub"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          int num1 = int.parse(num1Controller.text.toString());
                          int num2 = int.parse(num2Controller.text.toString());
                          int ans = num1*num2;
                          print("Mul :- $ans");
                        },
                        child: Text("Mul"),
                      ),
                      SizedBox(
                        width: 20,
                      ),ElevatedButton(
                        onPressed: (){
                          int num1 = int.parse(num1Controller.text.toString());
                          int num2 = int.parse(num2Controller.text.toString());
                          double ans = num1/num2;
                          print("Div :- "+ans.toStringAsFixed(2));
                        },
                        child: Text("Div"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}