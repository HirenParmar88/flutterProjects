import 'package:finalexam/bottomNavBar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
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
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Hiren parmar'),
                accountEmail: Text('hirenp1@gmail.com'),
                currentAccountPicture: Icon(Icons.account_circle),
            ),
            ListTile(
              title: Text('Home'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Add data'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.add_box_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => addpage(),));
              },
            ),
            ListTile(
              title: Text('Show data'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.remove_red_eye_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => showpage(),));
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Subtitle'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        //child: _getpage(currentIndex),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
          ],
        ),
      ),
    );
  }
}
/*
Widget _getpage(int index){
  switch(index){
    case 0:
      return homepage();
    case 1:
      return addpage();
    case 2:
      return showpage();
  }
}*/

class addpage extends StatefulWidget {
  const addpage({super.key});

  @override
  State<addpage> createState() => _addpageState();
}

class _addpageState extends State<addpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Add page'),
        ],
      ),
    ),
    );
  }
}

class showpage extends StatefulWidget {
  const showpage({super.key});

  @override
  State<showpage> createState() => _showpageState();
}

class _showpageState extends State<showpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show data'),
        backgroundColor: Colors.cyan,
      ),
      body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('show page'),
        ],
      ),
    ),
    );
  }
}


