//Third Page displaying detailed records

import 'package:customclass_with_globaldata/globalData.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail View"),
      ),
      body: Column(
        children: [
          Text(
            "Name: ${GlobalData.lstpersons[GlobalData.selectedIndex].name}",
            //style: TextStyle(fontSize: 20,color: Colors.red),
          ),
          SizedBox(height: 10,),
          Text(
            "City: ${GlobalData.lstpersons[GlobalData.selectedIndex].city}",
            //style: TextStyle(fontSize: 20,color: Colors.red),
          ),
          SizedBox(height: 10,),
          Text(
            "Pin: ${GlobalData.lstpersons[GlobalData.selectedIndex].pincode.toString()}",
            //style: TextStyle(fontSize: 20,color: Colors.red),
          ),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            GlobalData.lstpersons.removeAt(GlobalData.selectedIndex);
            Navigator.pop(context);
          }, child: Text("Delete")),
        ],
      ),
    );
  }
}
