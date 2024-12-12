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
    TextEditingController amountController = new TextEditingController();
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
                    "SET-5",
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
                  controller: amountController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Rupees ",
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
                          double amount =
                          double.parse(amountController.text.toString());
                          double ans = amount*0.012;
                          print("USD :- $ans");
                        },
                        child: Text("USD"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          double amount =
                          double.parse(amountController.text.toString());
                          double ans = amount*1.78;
                          print("YEN :- $ans");
                        },
                        child: Text("YEN"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          double amount =
                          double.parse(amountController.text.toString());
                          double ans = amount*0.011;
                          print("EURO :- $ans");
                        },
                        child: Text("EURO"),
                      ),
                      SizedBox(
                        width: 20,
                      ),ElevatedButton(
                        onPressed: (){
                          double amount =
                          double.parse(amountController.text.toString());
                          double ans = amount*0.0094;
                          print("POUND :- $ans");
                        },
                        child: Text("POUND"),
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