import 'package:flutter/material.dart';

void main()
{
  //return runApp(myapp());
  return runApp(tabbardemo());
}
/*
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tabbardemo(),
    );
  }
}*/

class tabbardemo extends StatelessWidget {
  const tabbardemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            backgroundColor: Colors.greenAccent,
            bottom: TabBar(
              tabs: [
                Tab(text: "Chat",icon: Icon(Icons.chat),),
                Tab(text: "Status",icon: Icon(Icons.update),),
                Tab(text: "Calls",icon: Icon(Icons.call),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("chats here"),
              ),
              Center(
                child: Text("status here"),
              ),
              Center(
                child: Text("Calls here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

