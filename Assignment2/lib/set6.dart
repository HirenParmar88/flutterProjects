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
    TextEditingController nameController = new TextEditingController();
    TextEditingController courseController = new TextEditingController();
    TextEditingController sub1Controller = new TextEditingController();
    TextEditingController sub2Controller = new TextEditingController();
    TextEditingController sub3Controller = new TextEditingController();
    TextEditingController sub4Controller = new TextEditingController();
    TextEditingController sub5Controller = new TextEditingController();
    TextEditingController sub6Controller = new TextEditingController();
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
                height: 10,
              ),
              Container(
                width: 500,
                child: Center(
                  child: Text(
                    "SET-6",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: nameController,
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Name ",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: courseController,
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Course ",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub1Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-1",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub2Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-2",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub3Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-3",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub4Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-4",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub5Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-5",
                      hintStyle:TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: sub6Controller,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Subject-6",
                      hintStyle:TextStyle(
                        fontSize: 10,
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
                child: Center(
                  child: ElevatedButton(
                    onPressed: (){
                      String name = nameController.text.toString();
                      String course = courseController.text.toString();
                      double sub1 = double.parse(sub1Controller.text.toString());
                      double sub2 = double.parse(sub2Controller.text.toString());
                      double sub3 = double.parse(sub3Controller.text.toString());
                      double sub4 = double.parse(sub4Controller.text.toString());
                      double sub5 = double.parse(sub5Controller.text.toString());
                      double sub6 = double.parse(sub6Controller.text.toString());
                      double total = sub1+sub2+sub3+sub4+sub5+sub6;
                      double per = total/6;
                      String result="fail";
                      if(per>50)
                      {
                        result="pass";
                      }
                      print("Total :- $total");
                      print("Percentage :- $per");
                      print("Result :- $result");
                    },
                    child: Text("Submit"),
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