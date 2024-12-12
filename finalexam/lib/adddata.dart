import 'package:finalexam/main.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/showdata.dart';

class adddata extends StatelessWidget {
  const adddata({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController roll=new TextEditingController();
  TextEditingController name=new TextEditingController();
  TextEditingController city=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        //child: Text('Home Page',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: roll,
                decoration: InputDecoration(
                  labelText: 'Enter Stud Roll No',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: 'Enter Stud Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: city,
                decoration: InputDecoration(
                  labelText: 'Enter Stud City',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => showdata(roll: roll.text,name: name.text,city: city.text),));
              }, child: Text('Add Data')),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                //Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => first(),));
              }, child: Text('Show Data')),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label:'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow),label:'Show'),
        ],
      ),
    );
  }
}
