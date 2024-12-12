import 'package:finalexam/main.dart';
import 'package:flutter/material.dart';
import 'package:finalexam/adddata.dart';

class showdata extends StatelessWidget {
  String roll,name,city;
  showdata({required this.roll,required this.name,required this.city});
  //const showdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show Data'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
            Text('Roll Num :$roll'),
            Text('Name :$name'),
            Text('City :$city'),

            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Edit')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              //Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>first()));
            }, child: Text('Back to Home')),
          ],
        ),
      );
  }
}
