import 'package:flutter/material.dart';

//bottom navbar demo
void main(){
  runApp(myhomedemo());
}

class myhomedemo extends StatelessWidget {
  const myhomedemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: statefulvisit(),
    );
  }
}

class statefulvisit extends StatefulWidget {
  const statefulvisit({super.key});

  @override
  State<statefulvisit> createState() => _statefulvisitState();
}

class _statefulvisitState extends State<statefulvisit> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav bar'),
        backgroundColor: Colors.cyanAccent,
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
            BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "list"),
            BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye),label: "show"),
          ]
      ),
    );
  }
}

Widget getpage(int index){
  switch(index){
    case 0:
      return addpg();
    case 1:
      return listdt();
    case 2:
      return detailView();
    default:
      return Container();
  }
}

class addpg extends StatefulWidget {
  const addpg({super.key});

  @override
  State<addpg> createState() => _addpgState();
}

class _addpgState extends State<addpg> {
  TextEditingController txtno=new TextEditingController();
  TextEditingController txtname=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 16,),
          TextField(
            controller: txtno,
            decoration: InputDecoration(
              labelText: "Enter Roll NO",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16,),
          TextField(
            controller: txtname,
            decoration: InputDecoration(
              labelText: "Enter Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            Student newStud=new Student();
            newStud.no=int.parse(txtno.text);
            newStud.name=txtname.text;
            GlobalData.lstdata.add(newStud);
          }, child: Text("Save")),
        ],
      ),
    );
  }
}

class Student{
  int no=0;
  String name="";
}

class GlobalData{
  static List<Student> lstdata=[];
  static int selectedIndex=0;
}

class listdt extends StatefulWidget {
  const listdt({super.key});

  @override
  State<listdt> createState() => _listdtState();
}

class _listdtState extends State<listdt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:ListView.builder(
        itemCount: GlobalData.lstdata.length,
        itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(GlobalData.lstdata[index].no.toString()),
            subtitle: Text(GlobalData.lstdata[index].name),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              GlobalData.selectedIndex=index;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return detailView();
              },)).then((value) {setState(() {

              });
              },);
            },
          ),
        );
      },),
    );
  }
}

class detailView extends StatelessWidget {
  const detailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Roll NO: ${GlobalData.lstdata[GlobalData.selectedIndex].no}"),
          Text("Name: ${GlobalData.lstdata[GlobalData.selectedIndex].name}"),
          ElevatedButton(onPressed: (){
            GlobalData.lstdata.removeAt(GlobalData.selectedIndex);
            Navigator.pop(context);
          }, child: Text("Delete")),
        ],
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

void main(){
  runApp(tabbar());
}

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Demo"),
          backgroundColor: Colors.grey[400],
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                currentIndex=index;
              });
            },
            tabs: [
            Tab(icon: Icon(Icons.add_box_outlined),),
            Tab(icon: Icon(Icons.list_alt),),
            Tab(icon: Icon(Icons.remove_red_eye_sharp),)
          ],),
        ),
          body: Center(
            child: getpage(currentIndex),
          ),
        ),
      ),
    );
  }
}

Widget getpage(int index){
  switch (index){
    case 0:
      return add_dt();
    case 1:
      return list();
    case 2:
      return details();
    default:
      return Container();
  }
}

class add_dt extends StatefulWidget {
  const add_dt({super.key});

  @override
  State<add_dt> createState() => _add_dtState();
}

class _add_dtState extends State<add_dt> {
  TextEditingController txtno=new TextEditingController();
  TextEditingController txtname=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: txtno,
              decoration: InputDecoration(
                labelText: "Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Student newStud=new Student();
              newStud.no=int.parse(txtno.text);
              newStud.name=txtname.text;
              GlobalData.lstdata.add(newStud);
            }, child: Text("Save")),
            SizedBox(height: 16,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return list();
              },));
            }, child: Text("List data")),
          ],
        ),
      ),
    );
  }
}

class Student{
  int no=0;
  String name="";
}

class GlobalData{
  static List<Student> lstdata=[];
  static int selectedIndex=0;
}

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: GlobalData.lstdata.length,
      itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(GlobalData.lstdata[index].no.toString()),
          subtitle: Text(GlobalData.lstdata[index].name),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            setState(() {
              GlobalData.selectedIndex=index;
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return details();
              },)).then((value) => setState(() {

              }));
            });
          },
        ),
      );
    },);
  }
}

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Roll No: ${GlobalData.lstdata[GlobalData.selectedIndex].no}"),
        Text("Name : ${GlobalData.lstdata[GlobalData.selectedIndex].name}"),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          GlobalData.lstdata.removeAt(GlobalData.selectedIndex);
          Navigator.pop(context);
        }, child: Text("Delete")),
      ],
    );
  }
}
*/