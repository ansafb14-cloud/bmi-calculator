import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() {
  runApp(bmicalculator());
}

class bmicalculator extends StatelessWidget {
  const bmicalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
           backgroundColor: Color(0xff141E28),
        ),
        scaffoldBackgroundColor: Color(0xff141E28),

      ),
      home: InputPage(
        
      ),
    );
  }



}

