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
    var PersonFirstName = TextEditingController();
    var PersonLastName = TextEditingController();
    var city = TextEditingController();
    var mobile = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget"),
          backgroundColor: Colors.blueAccent,
        ),

        body: Column(
          children: [
            TextField(
              controller: PersonFirstName,
              decoration: InputDecoration(
                hintText: "First Name ",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person
                ),
              ),
            ),
            TextField(
              controller: PersonLastName,
              decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.person
                ),
              ),
            ),

            TextField(
              controller: city,
              decoration: InputDecoration(
                hintText: "city",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.location_city
                ),
              ),
            ),

            TextField(
              controller: mobile,
              decoration: InputDecoration(
                hintText: "mobile",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.mobile_screen_share
                ),
              ),
            ),

            ElevatedButton(onPressed: (){
              String fname=PersonFirstName.text.toString();
              print("Entered First Name : $fname");

              String lname=PersonLastName.text.toString();
              print("Entered Last Name : $lname");

              String city1=city.text.toString();
              print("city : $city1");

              String mobile1=mobile.text.toString();
              print("mobile : $mobile1");
            }, child: Text("Submit")),
          ],
        ),
      ),
    );
  }
}


