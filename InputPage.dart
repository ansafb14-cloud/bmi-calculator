
import 'package:bmi_calculator/calculations.dart';

import 'resultpage.dart';

import 'package:flutter/material.dart';

import 'constes.dart';

import 'reusablecard.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'extractedbutton.dart';
import 'resultpage.dart';



enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Gender ? selctgender;


  int height = 180;
  int weight = 40;
  int age = 15;
  String gender = 'mal';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('BMI CALCULATOR'))),

      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {

                        selctgender=Gender.male;
                      });
                    },

                    child: reusablecard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Icon(FontAwesomeIcons.mars, size: 90),

                          SizedBox(height: 15),

                          Text('MALE', style: textstyle),
                        ],
                      ),
                      niram: inactivecolor,






                    ),
                  ),
                ),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selctgender= Gender.female;
                      });
                    },

                    child: reusablecard(
                      cardchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Icon(FontAwesomeIcons.venus, size: 90),

                          SizedBox(height: 15),

                          Text('FEMALE', style: textstyle),
                        ],
                      ),

                      niram: inactivecolor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: reusablecard(
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: heighttextstyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,

                    children: [
                      Text(height.toString(), style: textstyleonnumbers),
                      Text('cm', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 210,
                    activeColor: Color(0xffEA1556),
                    inactiveColor: Color(0xffc1c1d5),
                    onChanged: (double newvalue) {
                      setState(() {
                        height = newvalue.round();
                      });
                    },
                  ),
                ],
              ),

              niram: Color(0xff101427),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablecard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: heighttextstyle),
                        Text(weight.toString(), style: textstyleonnumbers),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundiconbutton(
                              icon: FontAwesomeIcons.plus,
                              iconcolor: Color(0xffEA1556),

                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),

                            SizedBox(width: 20),

                            Roundiconbutton(
                              icon: FontAwesomeIcons.minus,
                              iconcolor: Color(0xffEA1556),

                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),

                    niram: Color(0xff101427),
                  ),
                ),

                Expanded(
                  child: reusablecard(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: heighttextstyle),
                        Text(age.toString(), style: textstyleonnumbers),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundiconbutton(
                              icon: FontAwesomeIcons.plus,
                              iconcolor: Color(0xffEA1556),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(width: 20),
                            Roundiconbutton(
                              icon: FontAwesomeIcons.minus,
                              iconcolor: Color(0xffEA1556),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),

                    niram: Color(0xff101427),
                  ),
                ),
              ],
            ),
          ),

          BottomButton(
            bottomtext: 'CALCULATE',
            
            
            
            
            onPressed: () {
              CalculatorBrain coco = CalculatorBrain(height: height, weight: weight,gender  :gender,age: age);

              
               
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Resultpage(

                  actualresult: coco.calculateBMI(),
                  bmiresult: coco.getresult(),
                    interpretation: coco.getinterpretation(),


                ),


                ),
              );

            }


          ),
        ],
      ),
    );
  }
}







