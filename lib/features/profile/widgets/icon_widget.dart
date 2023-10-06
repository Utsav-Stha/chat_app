import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
   IconWidget({Key? key, required this.icon, required this.iconLabel}) : super(key: key);
  dynamic icon;
  String iconLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          foregroundColor: Colors.white,
          radius: 18,
          child: Icon(icon,size: 16,),
          backgroundColor: Colors.black54,
        ),
        SizedBox(
          height: 6,
        ),
        Text(iconLabel,
          style: TextStyle(
            fontSize: 10
          ),
        )
      ],
    );
  }
}
