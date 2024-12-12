import 'package:demoapp1/AddData.dart';
import 'package:demoapp1/DetailView.dart';
import 'package:demoapp1/GlobalData.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: AddData(),
  ));
}

class DynList extends StatefulWidget {
  const DynList({super.key});

  @override
  State<DynList> createState() => _DynListState();
}

class _DynListState extends State<DynList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: ListView.builder(
        itemCount: GlobalData.lstData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(GlobalData.lstData[index].name),
              subtitle: Text(GlobalData.lstData[index].no.toString()),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.view_list),
              onTap: () {
                GlobalData.selectIndex = index;
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailView();
                  },
                )).then(
                      (value) {
                    setState(() {});
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

/*
class staticList extends StatelessWidget {
  const staticList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hiren123@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
*/

