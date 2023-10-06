import 'package:flutter/material.dart';

import '../../../datas/user_data.dart';






class ActiveMembers extends StatelessWidget {
   ActiveMembers({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: profilePic.length,

          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: AssetImage('assets/${profilePic[index]}'),
                  ),
                  SizedBox(height: 8,),
                  Text(friendName[index]),
                ],
              ),
            );
          }
      ),
    );
  }
}
