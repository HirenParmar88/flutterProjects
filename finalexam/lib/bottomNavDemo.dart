import 'package:flutter/material.dart';

void main(){
  runApp(stateless());
}

class stateless extends StatelessWidget {
  const stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: stateful(),
    );
  }
}

class stateful extends StatefulWidget {
  const stateful({super.key});

  @override
  State<stateful> createState() => _statefulState();
}

class _statefulState extends State<stateful> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Bar Demo"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: getpage(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye),label: "Show"),
        ],
      ),
    );
  }
}

Widget getpage(int index){
  switch(index){
    case 0:
      return home();
    case 1:
      return add();
    case 2:
      return show();
    default:
      return Container();
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Page"),
    );
  }
}

class add extends StatelessWidget {
  const add({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Add Data"),
    );
  }
}

class show extends StatelessWidget {
  const show({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Show Data"),
    );
  }
}



