import 'package:arithmetic_operators/calcu1.dart';
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
    var fname=TextEditingController();
    var lname=TextEditingController();
    var email=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Registraion Form"),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),

        body: Column(
          children: [
            TextField(
              controller: fname,
              decoration: InputDecoration(
                hintText: "Enter First Name",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: lname,
              decoration: InputDecoration(
                hintText: "Enter Last Name",
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Enter Email ID",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: (){
              String newfname=fname.text.toString();
              print("Fname :$newfname");

              String newlname=lname.text.toString();
              print("lname :$newlname");

              String newemail=email.text.toString();
              print("email :$newemail");
            }, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
