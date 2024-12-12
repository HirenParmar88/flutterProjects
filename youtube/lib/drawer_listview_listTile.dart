import 'package:flutter/material.dart';
import 'package:youtube/expanded_widgets.dart';

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
      home:
      Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Hiren"),
                accountEmail: Text("hiren11@gmail.com"),
                currentAccountPicture: Icon(Icons.person,size: 50,),
              ),
              ListTile(
                title: Text("Item 1"),
                subtitle: Text("Sub title"),
              ),
              ListTile(
                title: Text("Item 2"),
                subtitle: Text("Sub title"),
              ),
              ListTile(
                title: Text("Item 3"),
                subtitle: Text("Sub title"),
              ),
              ListTile(
                title: Text("Item 4"),
                subtitle: Text("Sub title"),
              ),
              ListTile(
                title: Text("Item 5"),
                subtitle: Text("Sub title"),
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Text("Navigation Drawer & ListView"),
        backgroundColor: Colors.blue,
      ),
        body: Container(
          child: ListView(
            children: [
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text("Title"),
                subtitle: Text("sub title"),
                leading: Icon(Icons.person),
              ),
            ],
          ),
        ),
    ),);
  }
}
