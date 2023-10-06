import 'package:flutter/material.dart';

import '../../../datas/user_data.dart';




class ChatSection extends StatelessWidget {
  ChatSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: profilePic.length,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/${profilePic[index]}'),
                    ),
                  ),
                  SizedBox(width: 6,),
                   Expanded(
                     flex: 6,
                     child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(friendName[index],style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          ),
                          Text(chatMessage[index],
                          overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                   ),

                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(times[index]),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.yellow,
                          child: Text('2',style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
