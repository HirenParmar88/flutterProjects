import 'package:flutter/material.dart';
import 'package:youtube/student.dart';
import 'package:youtube/showStud.dart';

class addStud extends StatefulWidget {
  const addStud({super.key});

  @override
  State<addStud> createState() => _addStudState();
}

class _addStudState extends State<addStud> {
  TextEditingController rollno=new TextEditingController();
  TextEditingController name=new TextEditingController();
  TextEditingController city=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Add Students data'),
          backgroundColor: Colors.green,
      ),
        body: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: rollno,
                  decoration: InputDecoration(
                    labelText: 'Enter Roll NO',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: city,
                  decoration: InputDecoration(
                    labelText: 'Enter City',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>showStud(rollno:rollno.text,name:name.text,city:city.text )));
                }, child: Text('Add Students')),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancel')),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
          ],
        ),
    ));
  }
}

