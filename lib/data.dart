// import 'package:flutter/material.dart';
// import 'bmi.dart';

// void main(){
//   runApp (const BmiApp());
// }
// class BmiApp extends StatefulWidget {
//   const BmiApp({super.key});

//   @override
//   State<BmiApp> createState() => _BmiAppState();
// }
// TextEditingController heightController = TextEditingController();
// TextEditingController weightController = TextEditingController();
// String result = '';

// class _BmiAppState extends State<BmiApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: 
//         AppBar(
//           backgroundColor: Colors.lightBlue,
//           title: const Text( "BMI Calculator" ,textAlign: TextAlign.center, style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             children: [
//               const Text("Height"),
//               TextFormField(
//                 keyboardType: TextInputType.number,
//                 controller: heightController,
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Text("Weight"),
//               TextFormField(
//                 keyboardType: TextInputType.number,
//                 controller: weightController,
//               ),
//               const SizedBox(
//                 height: 30,),
//               Text('''
// You BMI $result'''),

//           ]),
//           ),
//         floatingActionButton: FloatingActionButton(onPressed:(){
//          BMI userInput =
//           BMI(height: double.parse(heightController.text) , weight:double.parse(weightController.text) );

//           setState((){
//           result = userInput.calculateBmi().toString();
//           });
          
//         }
//         ,
//         child: const Icon(Icons.equalizer),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
//         ),
//     );
//   }
// }
