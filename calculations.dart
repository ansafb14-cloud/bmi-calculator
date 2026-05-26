

import 'package:flutter/cupertino.dart';

import 'inputpage.dart';

 import 'dart:math';

class CalculatorBrain{

   CalculatorBrain ({ required this.height,required this.weight,required this. gender,required this.age});

  final int height;
  final int weight;
  final String gender;
  final int age;

   late double _bmi;


  String calculateBMI (){
    
   _bmi =weight / pow(height/100, 2);
    return _bmi .toStringAsFixed(2);
  }


  String getresult(){

    if (_bmi >=25) {
      return 'OVER WEIGHT';

    }else if (_bmi >=18.2){
      return 'NORMAL';

    }else {
      return 'UNDER WEIGHT';
    }

  }

  String getinterpretation(){

    String term = (gender == Gender.male)?"MOWNE" :"MOWNE";

    if (age < 10) {
      return 'NE KUTTI AANU $term, VALUTH AAYIT BMI NOKKAM.'; // "You are a kid, check BMI when older."
    }

    if (_bmi >= 25) {
      return 'WEIGHT SEAN AANU $term. KORAKKANAM.'; // Added dynamic term
    } else if (_bmi >= 18.5) {
      return 'NORMAL AADA $term. SEAN ILLA.'; // Added dynamic term
    } else {
      return 'POI VALLOM KAZHIKKEDA $term.'; // Added dynamic term
    }
  }
}

extension on String {
  Object get male => AutofillHints.gender;
}