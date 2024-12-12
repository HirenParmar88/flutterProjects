import 'package:flutter/material.dart';

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

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Hiren Parmar"),
                accountEmail: Text("hiren123@gmail.com"),
                currentAccountPicture: Icon(Icons.person),
                currentAccountPictureSize: Size(70, 70),
            ),
            ListTile(
              title: Text("title"),
              subtitle: Text("subtitle"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Home"),
              subtitle: Text("home page"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return home();
                },));
              },
            ),
            ListTile(
              title: Text("Add data"),
              subtitle: Text("add page"),
              leading: Icon(Icons.add_box_outlined),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return addpage();
                },));
              },
            ),
            ListTile(
              title: Text("Show"),
              subtitle: Text("Show page"),
              leading: Icon(Icons.remove_red_eye_sharp),
              trailing: Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return showpage();
                },));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Navigation Drawer"),
        backgroundColor: Colors.deepOrange[300],
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.deepOrange[300],
      ),
    );
  }
}

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
        title: Text("Add Data Page"),
        backgroundColor: Colors.deepOrange[300],
      ),
    );
  }
}

class showpage extends StatelessWidget {
  const showpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show data "),
        backgroundColor: Colors.deepOrange[300],
      ),
    );
  }
}

