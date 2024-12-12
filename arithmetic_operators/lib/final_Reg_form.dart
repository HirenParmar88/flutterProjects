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
    var rollno=TextEditingController();
    var name=TextEditingController();
    var city=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Registration Form"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            TextField(
              controller: rollno,
              decoration: InputDecoration(
                hintText: "Roll Number",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Ent Name",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: city,
              decoration: InputDecoration(
                hintText: "Ent City",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: (){
              var num1=int.parse(rollno.text.toString());
              String n1=name.text.toString();
              String c1=city.text.toString();
              print("Roll NUmber :$num1");
              print("name :$n1");
              print("city :$c1");
            }, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}

