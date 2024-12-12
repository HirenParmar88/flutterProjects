import 'package:flutter/material.dart';
import 'package:stud_reg_form/addData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Hiren'),
                accountEmail: Text('abc@gmail.com'),
                currentAccountPicture: Icon(Icons.person,size: 50,),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('Sub Title'),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>addData()));
            }, child: Text('Add Students')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('Show')),
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

