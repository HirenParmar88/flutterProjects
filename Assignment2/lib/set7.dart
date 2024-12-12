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
    TextEditingController meterController = new TextEditingController();
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
                    "SET-7",
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
                  controller: meterController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Meter ",
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
                  child: ElevatedButton(
                    onPressed: (){
                      double meter = double.parse(meterController.text.toString());
                      double ans = meter*100;
                      print("CM :- $ans");
                      double ans2 = meter*0.001;
                      print("KM :- $ans2");
                      double ans3 = meter*3.2;
                      print("Feet :- $ans3");
                      double ans4 = meter*39.37;
                      print("Inch :- $ans4");
                    },
                    child: Text("Convert"),
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