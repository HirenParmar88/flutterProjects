import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const myapp1());
}
//StatelessWidget
class myapp1 extends StatelessWidget {
  const myapp1({super.key});

  @override
  Widget build(BuildContext context) {
    //retrn const myapp();
    return MaterialApp(
      home: myapp(),
    );
  }
}

//StatefulWidget
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  var OddEvenController = TextEditingController();
  String status = "";
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OddEven Function Navigator"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          TextField(
            controller: OddEvenController,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              hintText: "Enter Number",
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.numbers,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {});
            num=int.parse(OddEvenController.text.toString());
            bool flag=CalcOddEven(num);
            status=flag ? "Even" : "Odd";

          }, child: Text("Submit")),
          Text("Entered Number $num is : $status"),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>
                  NextPage(num:num,strNumType:status,)));
        },child: Icon(Icons.directions),
      ),
    );
  }
}
bool CalcOddEven(int num)
{
  bool flag=true;
  if(num%2==0)
    flag=true;
  else
    flag=false;
  return flag;
}

// Second Page
class NextPage extends StatelessWidget {
  int num;
  String strNumType;
  NextPage({Key? key, required this.num, required this.strNumType});
  //const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Row(
        children: [
          Text("The Entered Number $num is : $strNumType"),
          ElevatedButton(onPressed: (){
            //Navigate back to first route when tapped.
            Navigator.pop(context);
          }, child: Text('Go Back!')),
        ],
      ),
    );
  }
}


