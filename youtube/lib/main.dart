import 'package:flutter/material.dart';
import 'package:youtube/widgets/rounded_btn.dart';
/* Creating a Custom Widget in Flutter */

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: Colors.orange,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: 'Login',
                icon: Icon(Icons.lock),
                callback: (){
                  print('Logged in!!');
                },
                bgColor: Colors.blue,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(height: 15,),
            Container(
              width: 150,
              height: 50,
              child: RoundedButton(
                btnName: 'Play',
                icon: Icon(Icons.play_arrow),
                callback: (){
                  print('Logged in!!');
                },
                bgColor: Colors.orange,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
