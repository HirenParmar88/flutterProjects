import 'package:finalexam/showdata.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/adddata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: first(),
    );
  }
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        //child: _getPage(currentIndex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => adddata()));
            }, child: Text('Add data')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {

        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye),label: 'Show'),
        ],
      ),
    );
  }
}
/*
Widget _getPage(int index){
  switch(index){
    case 0:
      return home();
    case 1:
      return adddata();
    case 2:
      var roll;
      var name;
      var city;
      return showdata(roll: roll, name: name, city: city) ;
    default:
      return Container();
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Home'),
        ],
      ),
    );
  }
}
*/

/*
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
        title: Text("Student Registration Form"),
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
*/
