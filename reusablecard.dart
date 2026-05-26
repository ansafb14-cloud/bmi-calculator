import 'package:flutter/material.dart';
import 'resultpage.dart';





class reusablecard extends StatelessWidget {

   final Color niram;
   final Widget cardchild;
   reusablecard({
     required this.niram, required this.cardchild

});





  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.fromLTRB(10,10,10,10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: niram

      ),
    );

  }
}


