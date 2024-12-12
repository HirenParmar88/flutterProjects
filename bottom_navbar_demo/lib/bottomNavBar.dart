import 'package:flutter/material.dart';

// Code for creating bottomNavBar With varied options
//void main()=>runApp(const BottomNavigationBarExampleApp());
void main() {
  runApp(const BottomNavigationBarExampleApp());
}

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {

  int selectedIndex=0;
  static const TextStyle taboptionStyle=TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const List<Widget> _widgetOptions=<Widget>[
    Text(
      'Tab 0: Home Page',
      style: taboptionStyle,
    ),
    Text(
      'Tab 1: Business Page',
      style: taboptionStyle,
    ),
    Text(
      'Tab 2: School Page',
      style: taboptionStyle,
    ),
    Text(
      'Tab 3: Settings Page',
      style: taboptionStyle,
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom NavigationBar Demo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex), 
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: /*const <BottomNavigationBarItem>*/[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

