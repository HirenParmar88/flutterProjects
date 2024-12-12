import 'package:flutter/material.dart';

void main() {
  runApp(const myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    var num1 = TextEditingController();
    var num2 = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment - II [ SET -1 ]'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),

        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: 400,
                child: Center(
                  child: TextField(
                    controller: num1,
                    decoration: InputDecoration(
                      hintText: "Enter Number1",
                      border: OutlineInputBorder(),
                      labelText: "Enter Number",
                    ),
                  ),
                ),
              ),

              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 400,
                    child: Center(
                      child: TextField(
                        controller: num2,
                        decoration: InputDecoration(
                          hintText: "Enter Number2",
                          border: OutlineInputBorder(),
                          labelText: "Enter Number",
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(onPressed: (){
                      var newnum1=int.parse(num1.text.toString());
                      var newnum2=int.parse(num2.text.toString());
                      //var minmax=newnum1+newnum2;
                      int maxnum = newnum1 > newnum2 ? newnum1 : newnum2;
                      int minnum = newnum1 < newnum2 ? newnum1 : newnum2;

                      print("Minimum Number is : $minnum");
                      print("Maximum Number is :$maxnum");
                    }, child: Text('Min-Max Num')),

                    ElevatedButton(onPressed: (){
                      var number1 = int.parse(num1.text.toString());
                      var number2 = int.parse(num2.text.toString());
                      int temp = number1;
                      number1=number2;
                      number2=temp;
                      print('After Swapping :-');
                      print("Number1 :$number1");
                      print("Number2 :$number2");

                    }, child: Text('Swap two Numbers')),

                    ElevatedButton(onPressed: (){
                      var x = int.parse(num1.text.toString());
                      var y = int.parse(num2.text.toString());

                      int quotient = x ~/ y;
                      print("Quotient is :$quotient");

                      int reminder = x % y;
                      print("Reminder is :$reminder");
                    }, child: Text('Quotient & Reminder')),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      );
  }
}
