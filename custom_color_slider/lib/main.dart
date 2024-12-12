import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ARGBSlider(),
    );
  }
}

class ARGBSlider extends StatefulWidget {
  const ARGBSlider({super.key});

  @override
  State<ARGBSlider> createState() => _ARGBSliderState();
}

class _ARGBSliderState extends State<ARGBSlider> {
  Color color=Colors.black;

  void updateColour(double alpha, double red, double green, double blue){
    setState(() {
      color=Color.fromARGB(
        alpha.round(),
        red.round(),
        green.round(),
        blue.round(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Colour Slider Demo - ARGB Slider"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adjust ARGB Values',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0,),

            Text(
              'Alpha: ${color.alpha}',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
                value: color.alpha.toDouble(),
                min: 0.0,
                max: 255.0,
                onChanged: (value){
                  updateColour(value, color.red.toDouble(), color.green.toDouble(), color.blue.toDouble());
                },),

            Text(
              'Red: ${color.red}',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: color.red.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (value){
                updateColour(color.alpha.toDouble(),value, color.green.toDouble(), color.blue.toDouble());
              },),

            Text(
              'Green: ${color.green}',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: color.green.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (value){
                updateColour(color.alpha.toDouble(), color.red.toDouble(),value, color.blue.toDouble());
              },),

            Text(
              'Blue: ${color.blue}',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: color.blue.toDouble(),
              min: 0.0,
              max: 255.0,
              onChanged: (value){
                updateColour(color.alpha.toDouble(), color.red.toDouble(), color.green.toDouble(),value);
              },),

            SizedBox(height: 20.0,),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
