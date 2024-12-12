import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AllWidgets(),
    );
  }
}

class AllWidgets extends StatefulWidget {
  const AllWidgets({super.key});

  @override
  State<AllWidgets> createState() => _AllWidgetsState();
}

enum enumGender{female,male,other}

class _AllWidgetsState extends State<AllWidgets> {
  @override
  Widget build(BuildContext context) {

    bool valueCheck=false;
    bool valueSwitch=false;
    double valueSlider=20;
    enumGender? _character = enumGender.female;
    // Time Picker Declarations
    TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);
    TextEditingController timeController = new TextEditingController();
    // Date Picker Declarations
    DateTime currentDate = DateTime.now();
    TextEditingController dateController = new TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Widgets Demo'),
        ),

        body: Column(
          children: [
            Text("Checkbox1"),
            Checkbox(
              checkColor: Colors.greenAccent,
              activeColor: Colors.red,
              value: valueCheck,
              onChanged: (bool? value){
                //setState(() {this.valueCheck=value!;});
                //print(valueCheck.toString());
            },
            ),
            Switch(
                value: valueSwitch,
                onChanged: (value){
                  valueSwitch=value;
                  //print(valueSwitch)
                  setState((){});
                },
            ),
            Slider(
              min: 1,
                max: 100,
                divisions: 10,
                activeColor: Colors.yellow,
                inactiveColor: Colors.deepPurpleAccent,
                thumbColor: Colors.black,
                value: valueSlider,
              label: valueSlider.round().toString(),
                onChanged: (value){
                  valueSlider=value;
                  //print(valueSlider.toInt());
                  setState(() {});
                },
            ),

            //Radio button use
            ListTile(
              title: Text("Female"),
              leading: Radio<enumGender>(
                value: enumGender.female,
                groupValue: _character,
                onChanged: (enumGender? value){
                  setState(() {
                    _character=value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Male"),
              leading: Radio<enumGender>(
                value: enumGender.male,
                groupValue: _character,
                onChanged: (enumGender? value){
                  setState(() {
                    _character=value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Other"),
              leading: Radio<enumGender>(
                value: enumGender.other,
                groupValue: _character,
                onChanged: (enumGender? value){
                  setState(() {
                    _character=value;
                  });
                },
              ),
            ),

            //Date Picker Code..
            (TextField(
                controller: dateController, //editing controller of this TextField
                decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Enter Date" //label text of field
                ),
                readOnly: true, // when true user cannot edit text
                onTap: () async {
//when click we have to show the datepicker
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(), //get today's date
                      firstDate:DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2050)
                  );
                  if(pickedDate != null ){
                    print(pickedDate);
                    setState(() {
                      String formatteddate = pickedDate.toString();
                      formatteddate = formatteddate.substring(0,10);
                      dateController.text = formatteddate;
                      //set formatted date to TextField value.
                    });
                  }else{
                    print("Date is not selected");
                  }
                }
            )),
            // Time Picker Code....!
            TextField(
                controller: timeController, //editing controller of this TextField
                decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Enter Time" //label text of field
                ),
                readOnly: true, // when true user cannot edit text - readonly
                onTap: () async {
                  //when click onTap method is called, timepicker is displayed
                  final TimeOfDay? newTime = await showTimePicker(
                    context: context,
                    initialTime: _time,
                  );
                  if(newTime != null ){
                    print(newTime);
                    setState(() {
                      String formattedtime = newTime.toString();
                      formattedtime = formattedtime.substring(10,15);
                      timeController.text = formattedtime; //set selected time to TextField value.
                    });
                  }
                  else
                  {
                    print("Time is not selected");
                  }
                }
            ),
            Text("Checkbox Value : ${valueCheck} "),
            Text("Switch Value: ${valueSwitch}"),
            Text("Slider Value :${valueSlider.toInt()}"),
            Text("Radio Value :${_character}"),
          ],
        ),
      ),
    );
  }
}

