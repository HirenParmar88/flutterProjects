import 'package:flutter/material.dart';
import 'package:youtube/bottomNavBar.dart';

class WelcomePage extends StatelessWidget {

  String txtNo,txtName,txtCity;

  WelcomePage({required this.txtNo,required this.txtName,required this.txtCity,});

  //const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Text('Roll No :${txtNo}'),
          Text('Name :${txtName}'),
          Text('City :${txtCity}'),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back"))
        ],
      ),
    );
  }
}
