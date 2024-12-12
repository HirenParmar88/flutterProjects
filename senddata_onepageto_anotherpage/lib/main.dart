import 'package:flutter/material.dart';
import 'package:senddata_onepageto_anotherpage/SecondPage.dart';
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
  TextEditingController _name=new TextEditingController();
  TextEditingController _email=new TextEditingController();
  TextEditingController _phone=new TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: _name,
              decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                labelText: 'Enter Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: _phone,
              decoration: InputDecoration(
                labelText: 'Enter Mobile',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondPage(name:_name.text, email:_email.text, phone:_phone.text)),);
              //Navigator.push(context, MaterialPageRoute(builder: (context){return SecondPage();}));
            }, child: Text("Send data to Another Page")),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add data',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: 'Show data'
          ),
        ],
      ),
    );
  }
}

