import 'package:demoapp1/GlobalData.dart';
import 'package:demoapp1/Student.dart';
import 'package:demoapp1/main.dart';
import 'package:flutter/material.dart';

class AddData extends StatelessWidget {
  AddData({super.key});

  TextEditingController txtNm=new TextEditingController();
  TextEditingController txtNo=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.yellowAccent,
          child: Column(
            children: [
              UserAccountsDrawerHeader(onDetailsPressed: () {
                print("tap event");
              },
                  decoration: BoxDecoration(color: Colors.indigoAccent),
                  currentAccountPicture: CircleAvatar(child: Text("H"),backgroundColor: Colors.white70,foregroundColor: Colors.black,),
                  accountName: Text("Hiren"),
                  accountEmail: Text("Hiren123@gmail.com")),
              ListTile(
                title: Text("Add Data"),
                leading: Icon(Icons.add),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AddData();
                  },));
                },
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DynList();
                  },));
                },
                title: Text("Display"),
                leading: Icon(Icons.data_exploration_outlined),
              ),
            ],
          )),
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body: Column(
        children: [
          TextField(
            controller: txtNo,
            decoration: InputDecoration(labelText: "Enter No"),
          ),
          SizedBox(height: 10,),
          TextField(
            controller: txtNm,
            decoration: InputDecoration(labelText: "Enter name"),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            Student newStu = new Student();
            newStu.name=txtNm.text;
            newStu.no=int.parse(txtNo.text);

            GlobalData.lstData.add(newStu);
          }, child: Icon(Icons.add)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return DynList();
          },
          ));
        },child: Icon(Icons.navigate_next),
      ),
    );
  }
}
