import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  return runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Hiren"),
                accountEmail: Text("hirenparmar11@gmail.com"),
                //currentAccountPicture: Icon(Icons.person, size: 50,),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset('assets/img2.jpg'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  image: DecorationImage(image: AssetImage('assets/img2.jpg'), fit: BoxFit.cover),
                ),
              ),
              ListTile(
                title: Text("Upload file"),
                //subtitle: Text("sub title"),
                leading: Icon(Icons.file_upload),
                onTap: () {
                  //Navigator.pop(context);
                  print("Upload tapped");
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.line_axis),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.notifications),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.share),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.logout),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Navigation Drawer & Listview Demo"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text("Title 1"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return secondroute();}));
                },
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Titles"),
                subtitle: Text("sub titles"),
                leading: Icon(Icons.person),
              ),
            ],
          ),
        ),
          ),
        );
  }
}

class secondroute extends StatelessWidget {
  const secondroute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sceond Page"),
      ),
    );
  }
}


