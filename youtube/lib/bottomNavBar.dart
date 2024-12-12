import 'package:flutter/material.dart';
import 'package:youtube/WelcomePage.dart';

void main()
{
  return runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomNavBar(),
    );
  }
}

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  TextEditingController txtNo=new TextEditingController();
  TextEditingController txtName=new TextEditingController();
  TextEditingController txtCity=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom NavigationBar Examples"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.black,
      ),

      body: Center(
        //child: Text("Home Page",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: txtNo,
              decoration: InputDecoration(
                labelText: "Enter Roll No",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtName,
              decoration: InputDecoration(
                labelText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtCity,
              decoration: InputDecoration(
                //hintText: "Enter City",
                border: OutlineInputBorder(),
                labelText: 'Enter city'
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              /*var num=int.parse(txtNo.text.toString());
              String name=txtName.text.toString();
              String city=txtCity.text.toString();

              print("Roll no: $num");
              print("Name :$name");
              print("City :$city");*/
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(txtNo: txtNo.text,txtName: txtName.text,txtCity: txtCity.text,)));
            }, child: Text("Add")),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Add',
              icon: Icon(Icons.add),
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.note),
                label: 'Display',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
        ],
      ),

    );
  }
}
