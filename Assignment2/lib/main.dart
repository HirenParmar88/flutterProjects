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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 450,
                child: Center(
                  child: Text(
                    "SET-1",
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
                width: 450,
                child: TextField(
                  controller: num1Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calculate),
                      hintText: "Enter Number 1",
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
                width: 450,
                child: TextField(
                  controller: num2Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calculate),
                      hintText: "Enter Number 1",
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
                width: 450,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          double num1 = double.parse(num1Controller.text.toString());
                          double num2 = double.parse(num2Controller.text.toString());
                          double min = 0;
                          double max = 0;
                          if(num1<num2)
                          {
                            max = num2;
                            min = num1;
                          }
                          else
                          {
                            max = num1;
                            min = num2;
                          }
                          num1Controller.clear();
                          num2Controller.clear();
                          print("Maximum = $max Minimum = $min");
                        },
                        child: Text("MIN & MAX"),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          double num1 = double.parse(num1Controller.text.toString());
                          double num2 = double.parse(num2Controller.text.toString());
                          double quotient = num1/num2;
                          double remaineder = num1%num2;
                          print("Quatient = $quotient Remainder = $remaineder");
                        },
                        child:
                        Text("Division"),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          int num1 = int.parse(num1Controller.text.toString());
                          int num2 = int.parse(num2Controller.text.toString());
                          int temp = 0;
                          print("Numbers Before Swap Number1 = $num1 Number2 = $num2");
                          temp = num1;
                          num1=num2;
                          num2=temp;
                          print("Numbers After Swap Number1 = $num1 Number2 = $num2");
                        },
                        child:
                        Text("Swap"),
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