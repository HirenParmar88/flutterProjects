//Second page with display custom objevt using ListView, card and SingleChildScrollView widgets

import 'package:customclass_with_globaldata/detailView.dart';
import 'package:customclass_with_globaldata/globalData.dart';
import 'package:flutter/material.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Data"),
      ),
      body: ListView.builder(
        itemCount: GlobalData.lstpersons.length, 
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text('Name: ${GlobalData.lstpersons[index].name}',/*style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blueAccent),*/),
                subtitle: Text('City: ${GlobalData.lstpersons[index].city} Pincode: ${GlobalData.lstpersons[index].pincode}',/*style: TextStyle(fontSize: 10,color: Colors.indigo),*/),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.delete),
                onTap: (){
                  GlobalData.selectedIndex=index;
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return DetailView();
                  },)).then((value){
                    setState(() {

                    });
                  },);
                },
              ),
            );
      }),

    );
  }
}
