import 'package:bmi_calculator/extractedbutton.dart';
import 'package:flutter/material.dart';
import 'constes.dart';
import 'reusablecard.dart';
import 'package:bmi_calculator/InputPage.dart';




class Resultpage extends StatelessWidget {
  Resultpage({required this.bmiresult,
    required this. actualresult,
    required this. interpretation,

});
  final String bmiresult;
  final String actualresult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Result')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: EdgeInsetsGeometry.all(15)),




          Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result', style: yourresultstyle,

              textAlign: TextAlign.center,


            ),
          ),
          Expanded(

            flex: 5,
            child: reusablecard(
                niram: Color(0xff101427),
                cardchild: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,



                  children: [

                    Text(bmiresult,
                        style: normaltextStyle,
                    textAlign: TextAlign.center
                    ),


                     Text(actualresult,
                       textAlign: TextAlign.center,

                      style: bignumberStyle,
                      ),

                     Text(interpretation,


                       textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,color: Colors.white
                      ),
                      ),

                  ],
                ),
              ),
          ),
          BottomButton(bottomtext: 'CALCULATE AGAIN', onPressed: (
          Navigator.of(context).pop),
          ),

        ],
      ),
    );
  }
}
