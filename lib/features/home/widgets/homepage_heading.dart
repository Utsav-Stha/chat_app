import 'package:flutter/material.dart';

class HomePageHeading extends StatelessWidget {
  const HomePageHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Mengobrol',style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),),
        Icon(Icons.search,size: 36,),
      ],
    );
  }
}
