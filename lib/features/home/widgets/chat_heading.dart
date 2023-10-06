import 'package:flutter/material.dart';

class ChatHeading extends StatelessWidget {
   ChatHeading({Key? key,
     required this.labelName,
     required this.iconName,
     // required this.textSize,
     required this.iconSize,
     // required this.fontWeight,
     this.inMainHeading}) : super(key: key);
  String labelName;
  dynamic iconName;
  // double textSize;
  double iconSize;
  // FontWeight fontWeight;
  bool? inMainHeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(labelName,
          ///(inMainHeading?? false )
          style: (inMainHeading?? false) ?
          TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ):
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),


        ),
        Icon(iconName,size: iconSize,)
      ],
    ) ;
  }
}
