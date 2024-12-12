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
    TextEditingController credit1Controller = new TextEditingController();
    TextEditingController grade1Controller = new TextEditingController();
    TextEditingController credit2Controller = new TextEditingController();
    TextEditingController grade2Controller = new TextEditingController();
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
                    "SET-2",
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
                  controller: credit1Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Credit Of Sem-1",
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
                  controller: grade1Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Grade Of Sem-1",
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
                  controller: credit2Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Credit Of Sem-2",
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
                  controller: grade2Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Grade Of Sem-2",
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
                          double cr1 = double.parse(credit1Controller.text.toString());
                          double gr1 = double.parse(grade1Controller.text.toString());
                          double cr2 = double.parse(credit1Controller.text.toString());
                          double gr2 = double.parse(grade1Controller.text.toString());
                          double sgpa1 = gr1 / cr1;
                          double sgpa2 = gr2 / cr2;
                          double cgpa = sgpa1+sgpa2;
                          double percentage = cgpa * 10;
                          print("SGPA Sem-1 :- "+sgpa1.toStringAsFixed(2));
                          print("SGPA Sem-2 :- "+sgpa2.toStringAsFixed(2));
                          print("CGPA :- "+cgpa.toStringAsFixed(2));
                          print("Percentage :- "+percentage.toStringAsFixed(2));
                        },
                        child: Text("Submit"),
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