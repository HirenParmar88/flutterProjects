import 'package:flutter/material.dart';

class Student{
  int roll=0;
  String name="";
  String city="";
}

class GlobalData{
  static List<Student>lstData=[];
  static int selectedIndex=0;
}

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  TextEditingController txtroll=new TextEditingController();
  TextEditingController txtname=new TextEditingController();
  TextEditingController txtcity=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10,),
              TextField(
                controller: txtroll,
                decoration: InputDecoration(
                  labelText: "Roll NO",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: txtname,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: txtcity,
                decoration: InputDecoration(
                  labelText: "city",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Student newStu=new Student();
                newStu.roll=int.parse(txtroll.text);
                newStu.name=txtname.text;
                newStu.city=txtcity.text;
                GlobalData.lstData.add(newStu);
              }, child: Text('Save')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DynList();
          },));
        },child: Icon(Icons.navigate_next),
      ),
    );
  }
}

class DynList extends StatefulWidget {
  const DynList({super.key});

  @override
  State<DynList> createState() => _DynListState();
}

class _DynListState extends State<DynList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data"),
        backgroundColor: Colors.blueAccent[200],
      ),
      body: ListView.builder(
        itemCount: GlobalData.lstData.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(GlobalData.lstData[index].name),
            subtitle: Text(GlobalData.lstData[index].roll.toString()),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              GlobalData.selectedIndex=index;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailsView();
              },)).then((value) {setState(() { });
              });
            },
          ),
        );
      },),
    );
  }
}

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details View"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Text("RollNO: ${GlobalData.lstData[GlobalData.selectedIndex].roll}",
          style: TextStyle(fontSize: 16),),
          SizedBox(height: 10,),
          Text("Name: ${GlobalData.lstData[GlobalData.selectedIndex].name}",
          style: TextStyle(fontSize: 16),),
          SizedBox(height: 10,),
          Text("City: ${GlobalData.lstData[GlobalData.selectedIndex].city}",
          style: TextStyle(fontSize: 16),),

          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            GlobalData.lstData.removeAt(GlobalData.selectedIndex);
            Navigator.pop(context);
          }, child: Text("Delete")),
        ],
      ),
    );
  }
}
