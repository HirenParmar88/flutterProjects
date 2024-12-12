import 'package:flutter/material.dart';
import 'package:youtube/addStud.dart';

void main()
{
  return runApp(MyApp());
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Hiren'),
              accountEmail: Text('hiren111@gmail.com'),
              currentAccountPicture: Icon(Icons.person, size: 50,),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Title'),
              subtitle: Text('gls university'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>addStud()));
            }, child: Text('Add Data')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

            }, child: Text('Show')),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        ],
      ),
    );
  }
}

