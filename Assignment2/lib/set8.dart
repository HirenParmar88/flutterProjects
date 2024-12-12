import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}
class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController numController = new TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: Center(
                  child: Text(
                    "SET-8",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
                child: TextField(
                  controller: numController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.power_input),
                      hintText: "Enter Number ",
                      hintStyle:TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 390,
                child: Center(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          int num = int.parse(numController.text.toString());
                          String ans="Odd";
                          if(num%2==0)
                          {
                            ans="Even";
                          }
                          print("Number Is :- $ans");
                        },
                        child: Text("Odd/Even"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          int num = int.parse(numController.text.toString());
                          bool prime = true;
                          if (num <= 1)
                          {
                            prime = false;
                          }
                          if (num == 2)
                          {
                            prime = true;
                          }
                          if (num % 2 == 0)
                          {
                            prime = false;
                          }
                          for (int i = 3; i <= num / 2; i++)
                          {
                            if (num % i == 0)
                            {
                              prime = false;
                            }
                          }
                          String primeStatus = prime ? "Prime" : "Not Prime";
                          print("Number Is :- $primeStatus");
                        },
                        child: Text("Prime"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: (){
                          int num = int.parse(numController.text.toString());
                          int ans = num*num*num;
                          print("Cube :- $ans");
                        },
                        child: Text("Cube"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}