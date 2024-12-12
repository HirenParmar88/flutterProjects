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
            title: Text('Error',style: TextStyle(color: Colors.red),),
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
        padding: EdgeInsets.all(90.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock_outline_rounded),
                suffixIcon: Icon(Icons.remove_red_eye_outlined,size: 20,),
              ),
              obscureText: true,
            ),
            SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white,letterSpacing: 2.0),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // Border radius
                ),
              ),
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
  TextEditingController txtmobile=new TextEditingController();
  TextEditingController txtemail=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student Data"),
        //backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              controller: txtno,
              decoration: InputDecoration(
                //hintText: "RollNO",
                labelText: "Enter RollNO",
                suffixIcon: Icon(Icons.add_moderator_outlined),
                //filled: true,
                //fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtname,
              decoration: InputDecoration(
                //hintText: "Name",
                labelText: "Enter Name",
                suffixIcon: Icon(Icons.person_outline),
                //filled: true,
                //fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtcity,
              decoration: InputDecoration(
                labelText: "Enter City",
                suffixIcon: Icon(Icons.location_city),
                //filled: true,
                //fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: txtmobile,
              decoration: InputDecoration(
                labelText: "Enter Mobile",
                suffixIcon: Icon(Icons.mobile_friendly_outlined),
                //filled: true,
                //fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: txtemail,
              decoration: InputDecoration(
                labelText: 'Enter Email',
                suffixIcon: Icon(Icons.email_outlined),
              ),
              obscureText: true,
            ),
            SizedBox(height: 26,),
            ElevatedButton(onPressed: (){
              Student newStu =new Student();
              newStu.no=int.parse(txtno.text);
              newStu.name=txtname.text;
              newStu.city=txtcity.text;
              newStu.mobile=txtmobile.text;
              GlobalData.lstData.add(newStu);

              // Clear text field values after saving
              txtno.clear();
              txtname.clear();
              txtcity.clear();
              txtmobile.clear();
              txtemail.clear();
            }, child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold),)),
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
          Text(
            "Mobile : ${GlobalData.lstData[GlobalData.selectedIndex].mobile}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10,),
          Text(
            "Email : ${GlobalData.lstData[GlobalData.selectedIndex].email}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return EditStudentView();
            },)).then((value){
              //GlobalData.selectedIndex;
            });
          }, child: Icon(Icons.edit),),
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

class EditStudentView extends StatefulWidget {
  @override
  _EditStudentViewState createState() => _EditStudentViewState();
}

class _EditStudentViewState extends State<EditStudentView> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Populate the text controllers with the selected student data
    Student selectedStudent = GlobalData.lstData[GlobalData.selectedIndex];
    _nameController.text = selectedStudent.name;
    _cityController.text = selectedStudent.city;
    _mobileController.text = selectedStudent.mobile;
    _emailController.text = selectedStudent.email;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Student Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: _cityController,
              decoration: InputDecoration(labelText: "City"),
            ),
            TextField(
              controller: _mobileController,
              decoration: InputDecoration(labelText: "Mobile"),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the edited details
                // You can implement your logic here
                // For simplicity, let's just print the edited data
                print("Edited Name: ${_nameController.text}");
                print("Edited City: ${_cityController.text}");
                print("Edited Mobile: ${_mobileController.text}");
                print("Edited Email: ${_emailController.text}");

                // Update the student data
                Student selectedStudent = GlobalData.lstData[GlobalData.selectedIndex];
                selectedStudent.name = _nameController.text;
                selectedStudent.city = _cityController.text;
                selectedStudent.mobile = _mobileController.text;
                selectedStudent.email = _emailController.text;

                // Navigate back to the detail view
                Navigator.push(context, MaterialPageRoute(builder: (context) => DynList(),));
                GlobalData.selectedIndex;
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}


class Student
{
  int no=0;
  String name="";
  String city="";
  String mobile="";
  String email="";
}

class GlobalData
{
  static List<Student> lstData=[];
  static int selectedIndex=0;
}

