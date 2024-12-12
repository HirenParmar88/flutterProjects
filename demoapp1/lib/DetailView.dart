
import 'package:demoapp1/GlobalData.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail View"),
      ),
      body: Column(
        children: [
          Text(
            "Name : ${GlobalData.lstData[GlobalData.selectIndex].no.toString()}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10,),
          Text(
            "RollNo: ${GlobalData.lstData[GlobalData.selectIndex].name}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            GlobalData.lstData.removeAt(GlobalData.selectIndex);
            Navigator.pop(context);
          }, child: Text("Delete")),

          ElevatedButton(onPressed: (){
            //GlobalData.lstData.removeAt(GlobalData.selectIndex);
            //GlobalData.lstData[GlobalData.selectIndex].name="aaa";
            GlobalData.lstData.forEach((element) {
              element.name="AAA";
            });
            Navigator.pop(context);
          }, child: Text("Update")),


        ],
      ),
    );
  }
}
