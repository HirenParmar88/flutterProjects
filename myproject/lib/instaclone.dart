import 'package:flutter/material.dart';
import 'package:myproject/main.dart';

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
      'Tab 1: Search',
      style: taboptionStyle,
    ),
    Text(
      'Tab 2: Add',
      style: taboptionStyle,
    ),
    Text(
      'Tab 3: Reels',
      style: taboptionStyle,
    ),
    Text(
      'Tab 4: Accounts',
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
        title: const Text('Instagram'),
        backgroundColor: Colors.grey[200],
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
            icon: Icon(Icons.search_outlined),
            label: 'Search',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Reels',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Accounts',
            backgroundColor: Colors.grey,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10, // Assuming there are 10 posts
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 5),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Post header with username and time
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      // You can set user profile images here
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Username',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '10 mins ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Post image
                Image.network(
                  'https://via.placeholder.com/400x200', // Sample image URL
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                // Post description
                Text(
                  'This is the caption for the post. You can add any text here.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                // Buttons for liking, commenting, etc.
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share_outlined),
                      onPressed: () {},
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.bookmark_border),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
*/