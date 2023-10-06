import 'package:flutter/material.dart';

class NewChats extends StatelessWidget {
  const NewChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text('NewChats'),
          )
        ],
      ),
    );
  }
}
