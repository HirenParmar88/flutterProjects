import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    var arrNames=['Hiren','Vivek','jay','sapan','Ravi','Yash','khushi','pankti','Mohit','Madhav','Unnati','Sahil','Srushti','Mansi','Dhara'];

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('listView'),
            backgroundColor: Colors.blueAccent,
          ),

      /*body: ListView(
        //scrollDirection: Axis.horizontal,
        reverse: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Five', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
        ],
      ), */

          /*body: ListView.builder(itemBuilder: (context, index) {
        return Text(arrNames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
      },
      itemCount: arrNames.length,
        itemExtent: 100,
        //scrollDirection: Axis.horizontal,
        //reverse: true,
      ),*/

            body: ListView.separated(itemBuilder: (context, index) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    //padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(arrNames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
                  ),
                ],
              );
            },
              itemCount: arrNames.length,
              separatorBuilder: (context, index) {
                return Divider(height: 100,thickness: 2,);
              },
            ),
    ),
    );
  }
}
