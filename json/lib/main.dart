import 'dart:convert';
import 'dart:io';
import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<Player> players=[];
List<Player> readplayers =[];
final File file=File('C:/Users/file1.json');
Future<void> readPlayerData(File file)async{
  //players=[];
  String contents=await file.readAsString();
  var jsonResponse=jsonDecode(contents);  //print(jsonResponse);
  for(var p in jsonResponse){
    Player player=Player(p['name'], p['age'], p['hobby']);
    players.add(player);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController namectrl=new TextEditingController();
  TextEditingController agectrl=new TextEditingController();
  TextEditingController hobbyctrl=new TextEditingController();
  String Pname="";
  String Page="";
  String Phobby="";
  String displaydata="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter JSON "),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namectrl,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                labelText: "Name",
              ),
            ),
            TextField(
              controller: agectrl,
              decoration: InputDecoration(
                hintText: "Enter Your Age",
                labelText: "Age",
              ),
            ),
            TextField(
              controller: hobbyctrl,
              decoration: InputDecoration(
                hintText: "Enter Your Hobby",
                labelText: "Hobby",
              ),
            ),
            TextButton(onPressed: (){
              setState(() {
                Pname=namectrl.text;
                Page=agectrl.text;
                Phobby=hobbyctrl.text;
                readPlayerData(file);
                Player newPlayer=Player(Pname, Page, Phobby);
                players.add(newPlayer);
                players.add(newPlayer);
                players.map((player)=> player.toJson(),).toList();
                file.writeAsStringSync(json.encode(players));
              });
            }, child: Text("Save Data",style: TextStyle(
              fontSize: 20,backgroundColor: Colors.cyan
            ),)),
            TextButton(onPressed: (){
              displaydata="";
              setState(() {
                readPlayerData(file);
                players.forEach((element) {
                  displaydata=displaydata+"Name : "+element.name+" \t";
                  displaydata=displaydata+"Age : "+element.age+" \t";
                  displaydata=displaydata+"Hobby : "+element.hobby+" \t";
                  displaydata=displaydata+"\n";
                });
                print(displaydata);
              });
            }, child: Text("Display Data", style: TextStyle(
              fontSize: 20,
              backgroundColor: Colors.cyan,
            ),)),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(displaydata),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined),label:"Add"),
        ],
      ),
    );
  }
}

//Player Class
class Player{
  late String name;
  late String age;
  late String hobby;
  Player(this.name,this.age,this.hobby);

  Map<String,dynamic>toJson(){
    final Map<String,dynamic> data=new Map<String,dynamic>();
    data['name']=this.name;
    data['age']=this.name;
    data['hobby']=this.hobby;
    return data;
  }
}

