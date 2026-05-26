
import 'package:flutter/material.dart';
import 'constes.dart';
import 'resultpage.dart';


class BottomButton extends StatelessWidget {

  BottomButton ({required this.bottomtext,required this.onPressed});



  final String bottomtext;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: Center(
          child: Text(
           bottomtext,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 15),

        color: Color(0xffEA1556),

        width: double.infinity,

        height: 80,
      ),
    );
  }
}