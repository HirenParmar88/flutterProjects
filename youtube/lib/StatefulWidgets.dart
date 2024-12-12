import 'package:flutter/material.dart';

//Stateful Widgets use to create a simple calculation add,sub,mul,div
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var num1=TextEditingController();
  var num2=TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculations"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: num2,
                ),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(num1.text.toString());
                        var no2=int.parse(num2.text.toString());
                        var add=no1+no2;
                        result="The Addition of $no1 and $no2 is $add";
                        setState(() {

                        });
                      }, child: Text('Add')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(num1.text.toString());
                        var no2=int.parse(num2.text.toString());
                        var sub=no1-no2;
                        result="The Sub of $no1 and $no2 is $sub";
                        setState(() {

                        });
                      }, child: Text('Sub')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(num1.text.toString());
                        var no2=int.parse(num2.text.toString());
                        var mul=no1*no2;
                        result="The Mul of $no1 and $no2 is $mul";
                        setState(() {

                        });
                      }, child: Text('Mul')),
                      ElevatedButton(onPressed: (){
                        var no1=int.parse(num1.text.toString());
                        var no2=int.parse(num2.text.toString());
                        var div=no1/no2;
                        result="The Div of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                        setState(() {

                        });
                      }, child: Text('Div')),
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(21),
                  child: Text(result,style: TextStyle(fontSize: 25),),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
