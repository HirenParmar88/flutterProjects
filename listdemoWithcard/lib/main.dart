import 'package:flutter/material.dart';

// List demo with card examples.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  /*void _login() {
    // Validate username and password, for simplicity, let's assume it's correct
    // You can implement your own validation logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    // After successful login, navigate to the add data page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHome()),
    );
  }*/
  void _login() {
    // Static usernames and passwords
    const String staticUsername = 'hiren';
    const String staticPassword = '123';

    // Get entered username and password
    String enteredUsername = _usernameController.text;
    String enteredPassword = _passwordController.text;

    // Check if entered username and password match static values
    if (enteredUsername == staticUsername && enteredPassword == staticPassword) {
      // Navigate to the add data page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHome()),
      );
    } else {
      // Show error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Invalid username or password.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page',style: TextStyle(fontWeight: FontWeight.bold,wordSpacing: 0,letterSpacing: 3.0),),
        backgroundColor: Colors.blueAccent[100],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController txtno=new TextEditingController();
  TextEditingController txtname=new TextEditingController();
  TextEditingController txtcity=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student Data"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: txtno,
              decoration: InputDecoration(
                hintText: "Enter RollNO",
                labelText: "RollNO",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers_rounded),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                hintText: "Enter Name",
                labelText: "Name",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtcity,
              decoration: InputDecoration(
                labelText: "City",
                prefixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Student newStu =new Student();
              newStu.no=int.parse(txtno.text);
              newStu.name=txtname.text;
              newStu.city=txtcity.text;
              GlobalData.lstData.add(newStu);

              // Clear text field values after saving
              txtno.clear();
              txtname.clear();
              txtcity.clear();
            }, child: Text("Save")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DynList();
          },));
        },child: Icon(Icons.navigate_next),
      ),
      /*body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Hiren Parmar"),
                subtitle: Text("hirenparmar993@gmail.com"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
              ),
            ),
          ],
        ),
      ),*/
    );
  }
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
        title: Text("List Data"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: GlobalData.lstData.length,   //to use GlobalData.lstData
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(GlobalData.lstData[index].name),
                subtitle: Text(GlobalData.lstData[index].no.toString()),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  GlobalData.selectedIndex=index;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailView();
                  },)).then((value) {
                    setState(() {});
                  },);
                },
              ),
            );
          },
      ),
    );
  }
}

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details View "),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Text(
            "RollNO: ${GlobalData.lstData[GlobalData.selectedIndex].no.toString()}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10,),
          Text(
            "Name : ${GlobalData.lstData[GlobalData.selectedIndex].name}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10,),
          Text(
            "City : ${GlobalData.lstData[GlobalData.selectedIndex].city}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            GlobalData.lstData.removeAt(GlobalData.selectedIndex);
            Navigator.pop(context);
          }, child: Text("delete"),),
        ],
      ),
    );
  }
}

class Student
{
  int no=0;
  String name="";
  String city="";
}

class GlobalData
{
  static List<Student> lstData=[];
  static int selectedIndex=0;
}

