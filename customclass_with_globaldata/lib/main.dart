import 'package:customclass_with_globaldata/globalData.dart';
import 'package:customclass_with_globaldata/viewData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Declare person class with attributes
class Person{
  String name,city;
  int pincode;
  Person({required this.name,required this.city,required this.pincode});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHome(),
    );
  }
}

class myHome extends StatefulWidget {
  const myHome({super.key});

  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  String strName="";
  String strCity="";
  int pincode=0;

  @override
  Widget build(BuildContext context) {
    TextEditingController txtName=new TextEditingController();
    TextEditingController txtCity=new TextEditingController();
    TextEditingController txtPincode=new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Class with List Sample"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(width: 20,height: 20,),
          TextField(
            controller: txtName,
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
            ),
          ),
          SizedBox(width: 20,height: 20,),
          TextField(
            controller: txtCity,
            decoration: InputDecoration(
              hintText: "Enter Your City",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.location_city),
            ),
          ),
          SizedBox(width: 20,height: 20,),
          TextField(
            controller: txtPincode,
            decoration: InputDecoration(
              hintText: "Enter Your Pincode",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.numbers),
            ),
          ),
          SizedBox(width: 20,height: 20,),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                String name=txtName.text.toString();
                String city=txtCity.text.toString();
                int pincode=int.parse(txtPincode.text.toString());

                GlobalData.lstpersons.add(Person(name: name, city: city, pincode: pincode));
                txtName.clear();
                txtCity.clear();
                txtPincode.clear();
              }, child: Text("Add")),
              SizedBox(width: 16,),
              ElevatedButton(onPressed: (){
                if(GlobalData.lstpersons.isNotEmpty)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewData()));
                  }
                else
                  {
                    print("List is Empty..!");
                  }
              }, child: Text("View All")),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewData()));
        },
          child: Icon(Icons.remove_red_eye_outlined,),
      ),
    );
  }
}
