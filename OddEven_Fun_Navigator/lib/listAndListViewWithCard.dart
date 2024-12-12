import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oddeven_fun_navigator/main.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {

  TextEditingController txtNum=new TextEditingController();
  List<int> lstMarks=[];
  String strValue="";

  //move list items.
  void nextItem(int index){
    setState(() {
      final item = lstMarks.removeAt(index);
      lstMarks.insert(index -1, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Demo App"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          //SizedBox(height: 20,),
          TextField(
            controller: txtNum,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: "Enter a Number",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            //mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                int num=int.parse(txtNum.text);
                lstMarks.add(num);
                txtNum.clear();
                setState(() {
                  strValue=lstMarks.toString();
                });
              }, child: Text('Add')),

              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                lstMarks.sort();
                setState(() {
                  strValue=lstMarks.toString();
                });
                //print(lstMarks);
              }, child: Text('Sort')),

              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                lstMarks.removeAt(2);
                //print(lstMarks.length);
                setState(() {
                  strValue=lstMarks.toString();
                });
              }, child: Text('Remo')),

              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                int max=0;
                for(int cntr=0; cntr < lstMarks.length; cntr++){
                  if(lstMarks[cntr] > max){
                    max = lstMarks[cntr];
                  }
                }
                print(max);
              }, child: Text('Max')),

              Text("Entered List is $strValue"),
              //Text("Max Num is $max"),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                lstMarks.first;
                setState(() {
                  strValue = lstMarks.first.toString();
                });
              }, child: Text('First')),
              SizedBox(width: 20,height: 20,),
              ElevatedButton(onPressed: (){
                lstMarks.last;
                setState(() {
                  strValue = lstMarks.last.toString();
                });
              }, child: Text('Last')),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                  //nextItem();
              }, child: Text('Next')),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){

              }, child: Text('Prev')),
            ],
          ),
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Navigator for Display List Items on Next Page
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => NextPage(lstDisplay: lstMarks)));
          
          //Navigator for display List Items on Next Page using ListView and Card

          //Navigator.push(context, MaterialPageRoute(
              //builder: (context) => ListsWithCards(lstDisplay: lstMarks)));
        },child: Icon(Icons.directions),
      ),
    );
  }
}

// Second Page with Display List in NextPage

class NextPage extends StatelessWidget {

  List<int> lstDisplay=[];
  NextPage({Key? key, required this.lstDisplay});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Row(
        children: [
          Text('The Entered List $lstDisplay'),
          ElevatedButton(onPressed: (){
            //Navigate back to first route when tapped.
            Navigator.pop(context);
          }, child: Text('Go Back!')),
        ],
      ),
    );
  }
}

// Second Page with Display ListItems using listView and Card Widgets
/*
class ListWithCards extends StatelessWidget {
  //const ListWithCards({super.key});

  @override
  List lstDisplay=[];
  ListsWithCards({Key? key, required this.lstDisplay});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder with Card Example'),
          backgroundColor: Colors.blueAccent,
        ),
        body: CardList(listData: lstDisplay),
      ),
    );
  }
}
*/
