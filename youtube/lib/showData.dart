import 'package:flutter/material.dart';
import 'package:youtube/addData.dart';
import 'package:youtube/studReg.dart';

class showData extends StatelessWidget {
  String fname,lname,surname;
  showData({required this.fname,required this.lname,required this.surname});
  //const showData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Show Data'),
        ),
        body: Center(
            child: Column(
                children: [
                Text('First Name :${fname}'),
            Text('First Name :${lname}'),
        Text('First Name :${surname}'),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Back')),
    ],
    ),
    ),
    );
  }
}
