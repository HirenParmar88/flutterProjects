import 'package:flutter/material.dart';
import 'package:oddeven_fun_navigator/listAndListViewWithCard.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {

  var emailtext = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: Text('User Inputs'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
          body: Center(
              child: Container(
                width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        //enabled: false,
                        controller: emailtext,
                        decoration: InputDecoration(
                          hintText: 'Enter Mobile Num',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                          ),
                        ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black45,
                              width: 2,
                            ),
                          ),
                          suffixText: "********",
                          suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye, color: Colors.orange),
                          onPressed: (){

                          },
                          ),
                          prefixIcon: Icon(Icons.phone, color: Colors.orange,),
                        ),
                      ),
                      Container(height: 11,),
                      TextField(
                        keyboardType: TextInputType.phone,
                        controller: passText,
                        //hide pass kare
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.deepOrange,
                            ),
                          ),
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                      SizedBox(height: 16,),
                      ElevatedButton(onPressed: (){
                        String uEmail=emailtext.text.toString();
                        String uPass=passText.text;

                        print("Email :$uEmail, Pass :$uPass");
                      }, child: Text('Login')),
                    ],
                  ))),
    ),);
  }
}
