import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String name,email,phone;
  SecondPage({required this.name,required this.email,required this.phone});
  //const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text('Name: ${name}'),
          Text('Email: ${email}'),
          Text('Mobile: ${phone}'),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){

          }, child: Text("Delete")),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Back to Home")),
        ],
      ),
    );
  }
}
