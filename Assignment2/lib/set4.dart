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
    TextEditingController nameController = new TextEditingController();
    TextEditingController salaryController = new TextEditingController();
    TextEditingController departmentController = new TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: Center(
                  child: Text(
                    "SET-4",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image.asset('one.jpg'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: nameController,
                  style:TextStyle(
                    fontSize: 10,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Name ",
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
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: salaryController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Salary",
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
                height: 10,
              ),
              Container(
                width: 400,
                child: TextField(
                  controller: departmentController,
                  style:TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter Department",
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
                height: 10,
              ),
              Container(
                width: 400,
                child: Center(
                  child: ElevatedButton(
                    onPressed: (){
                      var gp = 500;
                      var ta;
                      var da = 600;
                      var ma = 100;
                      var hra;
                      var deduction = 300;
                      var name = nameController.text.toString();
                      var department = departmentController.text.toString();
                      var salary_1 = double.tryParse(salaryController.text.toString());
                      print("Name :- $name");
                      print("Department :- $department");
                      if(salary_1 != null)
                      {
                        if(salary_1 > 10000)
                        {
                          hra = salary_1 * 10 / 100;
                          ta = salary_1 * 15 / 100;
                          print("HRA is $hra AND TA is $ta");
                        }
                        if(salary_1 > 7000 && salary_1 < 1000)
                        {
                          hra = salary_1 * 8 / 100;
                          ta = salary_1 * 12 / 100;
                          print("HRA is $hra AND TA is $ta");
                        }
                        if(salary_1 < 7000)
                        {
                          hra = salary_1 * 5 / 100;
                          ta = salary_1 * 10 / 100;
                          print("HRA is $hra AND TA is $ta");
                        }
                        var total = salary_1 + gp + hra + da + ta + ma - deduction;
                        print("Total salary is :- $total");
                      }
                    },
                    child: Text("Submit"),
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