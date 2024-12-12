import 'package:flutter/material.dart';
import 'package:customlist_with_tabbar/Student.dart';
import 'package:customlist_with_tabbar/SharedData.dart';

void main() {
  runApp(MaterialApp(
    home: DemoClass(),
  ));
}

class DemoClass extends StatelessWidget {
  const DemoClass({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Demo"),
            backgroundColor: Colors.blueAccent,

            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.add),
                text: "Add",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              DemoTabPage1(),
              DemoPage2(),
            ],
          ),
        ));
  }
}

class DemoPage2 extends StatefulWidget {
  const DemoPage2({super.key});

  @override
  State<DemoPage2> createState() => _DemoPage2State();
}

class _DemoPage2State extends State<DemoPage2> {
  String str="";
  int marks1=0,marks2=0;
  TextEditingController txtNo=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom List with TabBar Demo"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            TextField(
              controller: txtNo,
              decoration: InputDecoration(labelText: "Enter no"),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              for(int cntr=0;
              cntr<SharedData.lstStudent.length;
              cntr ++){
                if(SharedData.lstStudent[cntr].no==txtNo.text){
                  print(SharedData.lstStudent[cntr].name);
                  str=SharedData.lstStudent[cntr].name;
                  marks1=SharedData.lstStudent[cntr].marks1;
                  marks2=SharedData.lstStudent[cntr].marks2;
                }
              }
              setState(() {});

            }, child: Text("Show Marks")),
            Text("Student Name: ${str} have scored ${marks1} and ${marks2}")
          ],
        ),
      ),
    );
  }
}
class DemoTabPage1 extends StatelessWidget {
  DemoTabPage1({super.key});

  TextEditingController txtName=new TextEditingController();
  TextEditingController txtNo=new TextEditingController();
  TextEditingController txtMarks1=new TextEditingController();
  TextEditingController txtMarks2=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Details Page"),
          backgroundColor: Colors.grey,
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                controller: txtNo,
                decoration: InputDecoration(labelText: "Enter No"),
              ),
              TextField(
                controller: txtName,
                decoration: InputDecoration(labelText: "Enter Name"),
              ),
              TextField(
                controller: txtMarks1,
                decoration: InputDecoration(labelText: "Enter Marks 1"),
              ),
              TextField(
                controller: txtMarks2,
                decoration: InputDecoration(labelText: "Enter Marks 2"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Student objStud=new Student();

                objStud.name=txtName.text;
                objStud.no=txtNo.text;
                objStud.marks1=int.parse(txtMarks1.text);
                objStud.marks2=int.parse(txtMarks2.text);

                SharedData.lstStudent.add(objStud);
                print(SharedData.lstStudent.length);
                txtNo.clear();
                txtName.clear();
                txtMarks1.clear();
                txtMarks2.clear();

              }, child: Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}

