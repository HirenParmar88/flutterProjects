import 'package:finalexam/bottomNavBar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Demo"),
            backgroundColor: Colors.cyan,
            bottom: TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex=index;
                });
              },
                tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.add_box_outlined),text: "Add",),
                  Tab(icon: Icon(Icons.remove_red_eye),text: "Show",),
            ]),
          ),
          body: Center(
            child: getPage(currentIndex),
          ),
        ),
      ),
    );
  }
}

Widget getPage(int index){
  switch(index){
    case 0:
      return homepage();
      case 1:
        return addpage();
        case 2:
          return showpage();
    default:
      return Container();
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Page",style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}

class addpage extends StatelessWidget {
  const addpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Add data"),
    );
  }
}

class showpage extends StatelessWidget {
  const showpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Show data"),
    );
  }
}


/*void main(){
  runApp(MyHome());
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
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Demo"),
            backgroundColor: Colors.grey[500],
            bottom: TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex=index;
                });
              },
                tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home"),
                  Tab(icon: Icon(Icons.add_box_outlined),text: "Add",),
                  Tab(icon: Icon(Icons.remove_red_eye),text: "Show",)
                ],),
          ),
          body: Center(
            child: getPage(currentIndex),
          ),
        ),
      ),
    );
  }
}

Widget getpage(int index){
  switch(index){
    case 0:
      return homepage();
    case 1:
      return addpage();
    case 2:
      return showpage();
    default:
      return Container();
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Page"),
    );
  }
}

class addpage extends StatelessWidget {
  const addpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Add Page"),
    );
  }
}

class showpage extends StatelessWidget {
  const showpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("show page"),
    );
  }
}*/


/*
void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar demo"),
            backgroundColor: Colors.green[300],
            bottom: TabBar(
              onTap: (index) {
                setState(() {
                  currentIndex=index;
                });
              },
              tabs: [
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.add_box_outlined),),
                Tab(icon: Icon(Icons.remove_red_eye_outlined),),
              ],
            ),
          ),
          body: Center(
            child: _getdata(currentIndex),
          ),
        ),
      ),
    );
  }
}

Widget _getdata(int index){
  switch(index){
    case 0:
      return MyHome();
    case 1:
      return AddData();
    case 2:
      return ShowData();
    default:
      return Container();
  }
}

/*
class MyApp extends StatelessWidget {
  //int currentIndex=0;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabbar demo"),
            backgroundColor: Colors.grey[400],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.add_box_outlined),),
                Tab(icon: Icon(Icons.remove_red_eye_outlined),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Home Page'),),
              Center(child: Text('Add data'),),
              Center(child: Text('Show data'),)
            ],
          ),
        ),
      ),
    );
  }
}*/

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController roll=new TextEditingController();
  TextEditingController name=new TextEditingController();
  TextEditingController city=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 5,),
              TextField(
                controller: roll,
                decoration: InputDecoration(
                  labelText: "Enter roll no",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: city,
                decoration: InputDecoration(
                  labelText: "Enter City",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

              }, child: Text("Save")),
            ],
          ),
        ),
      ),
    );
  }
}

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Data',style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}

class ShowData extends StatelessWidget {
  const ShowData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Show Data',style: TextStyle(fontWeight: FontWeight.bold),),
    );
  }
}*/





