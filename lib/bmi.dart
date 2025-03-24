import 'package:flutter/material.dart';

class BMI {
  final double height;
  final double weight;

  BMI({required this.height, required this.weight});

  double squaredHeight(){
    return height * height;
  }
  double calculateBmi (){
    return weight / squaredHeight();
  }
  Color userBmiColor (){
    if (calculateBmi() <= 18.4){
      return Colors.yellow;
    }else if(calculateBmi()>= 18.5 && calculateBmi()<=24.9){
      return Colors.green;
    }else if(calculateBmi()>= 25.0 && calculateBmi()<= 39.9){
      return Colors.orange;
    }else {
      return Colors.red;
    }
  }
  String userBmiStatus (){
    if (calculateBmi() <= 18.4){
      return "Underweight";
    }else if(calculateBmi()>= 18.5 && calculateBmi()<=24.9){
      return "Normal";
    }else if (calculateBmi()>= 25.0 && calculateBmi()<= 39.9){
      return "Overweight";
    }else {
      return "Obesssed";
    }
  }
  

}