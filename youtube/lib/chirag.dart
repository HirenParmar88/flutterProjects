import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddDataPage()),
                );
              },
              child: Text('Add New'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewRecordsPage()),
                );
              },
              child: Text('View'),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewRecordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Records'),
      ),
      body: Center(
        child: Text('Display All Records'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Data',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddDataPage()),
            );
          }
        },
      ),
    );
  }
}

class AddDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement UI for adding new data
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Data'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'SSC Marks'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'HSC Marks'),
              keyboardType: TextInputType.number,
            ),
            Row(
              children: [
                Radio(value: 'Female', groupValue: null, onChanged: null),
                Text('Female'),
                Radio(value: 'Male', groupValue: null, onChanged: null),
                Text('Male'),
                Radio(value: 'Other', groupValue: null, onChanged: null),
                Text('Other'),
              ],
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
              min: 0,
              max: 255,
              label: 'Red',
              divisions: 255,
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
              min: 0,
              max: 255,
              label: 'Green',
              divisions: 255,
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
              min: 0,
              max: 255,
              label: 'Blue',
              divisions: 255,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: null),
                Text('I Agree with the terms and conditions.'),
              ],
            ),  
            ElevatedButton(
              onPressed: () {
                // Implement registration logic
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
