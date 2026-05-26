import 'package:flutter/material.dart';
import 'InputPage.dart';



const reusablecardcolor = Color(0xff111238);

const inactivecolor = Color(0xff101427);

const textstyle = TextStyle(color: Color(0xff8D8F9E), fontSize: 18);

const heighttextstyle = TextStyle(color: Color(0xff8D8F9E), fontSize: 20);

const textstyleonnumbers = TextStyle(fontSize: 50, fontWeight: FontWeight.w900);

const yourresultstyle = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);

const  normaltextStyle =TextStyle(fontSize: 30,color: Color(0xff3bba3a));

const bignumberStyle = TextStyle(fontSize: 80,fontWeight: FontWeight.bold,color: Color(0xffEA1556));





class Roundiconbutton extends StatelessWidget {
  Roundiconbutton({
    required this.icon,
    required this.onPressed,
    required this.iconcolor,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color: iconcolor),

      onPressed: onPressed,

      elevation: 6,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      fillColor: Color(0xff1C2033),

      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}