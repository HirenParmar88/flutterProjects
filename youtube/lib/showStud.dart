import 'package:flutter/material.dart';
import 'package:youtube/addStud.dart';
import 'package:youtube/student.dart';

class showStud extends StatelessWidget {
  String rollno,name,city;
  showStud({required this.rollno,required this.name,required this.city});
  //const showStud({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Student data'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text('Student RollNo :${rollno}'),
          Text('Student Name :${name}'),
          Text('Student City : ${city}'),

          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Go Back')),
        ],
      ),
    );
  }
}
