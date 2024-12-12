import 'package:flutter/material.dart';
import 'package:stud_reg_form/addData.dart';

class showData extends StatelessWidget {
  String name,city,mobile;
  showData({required this.name,required this.city,required this.mobile});
  //const showData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show data'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Text('Student Name: ${name}'),
          Text('Student City: ${city}'),
          Text('Student Mobi: ${mobile}'),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back')),
        ],
      ),
    );
  }
}
