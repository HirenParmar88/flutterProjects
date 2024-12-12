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
    var fname=TextEditingController();
    var lname=TextEditingController();
    var city=TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.deepOrangeAccent,
        ),

        body: Column(
          children: [
            TextField(
              controller: rollno,
              decoration: InputDecoration(
                hintText: "Enter Roll NO",
                border: OutlineInputBorder(),
              ),
            ),

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
              controller: city,
              decoration: InputDecoration(
                hintText: "Enter City",
                border: OutlineInputBorder(),
              ),
            ),

            ElevatedButton(onPressed: (){
              var newroll=int.parse(rollno.text.toString());
              print("Roll NO :$newroll");

              String newfname=fname.text.toString();
              print("First Name :$newfname");

              String newlname=lname.text.toString();
              print("Last Name :$newlname");

              String newcity=city.text.toString();
              print("City :$newcity");
            }, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}
