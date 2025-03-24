import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BmiApp());
}
class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String userBmiValue = "";
  Color userBmiColor = Colors.black;
  String userBmiStatus = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: const Text("BMI Calculator", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold 
            ),
          ),
        ),
        body: Padding( padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              TextFormField(
                controller: heightController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true) ,
                decoration: InputDecoration(hintText: "Enter your height (m)", 
                prefixIcon: Icon(Icons.man, color: Colors.purple[300],)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                maxLength: 3,
                controller: weightController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true) ,
                decoration: InputDecoration(hintText: "Enter your weight (kg)", 
                prefixIcon: Icon(Icons.line_weight, color: Colors.purple[300],)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Your BMI is: ",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromARGB(255, 186, 104, 200)),),
              Text(userBmiValue ,style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: userBmiColor,)
              ),
              const SizedBox(
                height: 30,
              ),
              Text(userBmiStatus,style: TextStyle( fontSize: 20, fontWeight: FontWeight.w100, color: userBmiColor),)

            ],
            ),
        ),
        // ignore: prefer_const_constructors
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            BMI userBmi = BMI(height: double.parse(heightController.text), weight: double.parse(weightController.text));
            setState(() {
              userBmiValue = userBmi.calculateBmi().toStringAsFixed(2);
              userBmiColor = userBmi.userBmiColor();
              userBmiStatus = userBmi.userBmiStatus();
            });
          }, 
        backgroundColor: Colors.purple[300],
        child: const Icon(
          Icons.equalizer,
          color: Colors.white,
          ),
          
        ), 
      ),
    );
  }
}
