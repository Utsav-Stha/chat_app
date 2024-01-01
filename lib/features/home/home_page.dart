import 'package:flutter/material.dart';
import 'package:messenger_app/features/profile/profile_page.dart';

import 'widgets/active_members.dart';
import 'widgets/chat_heading.dart';
import 'widgets/chat_section.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    Size sze = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              // shrinkWrap: true,
              children: [
                ChatHeading(
                  labelName: 'Mongeto',
                  iconName: Icons.search,

                  iconSize: 36,

                  inMainHeading: true,
                ),

                SizedBox(
                  height: 16,
                ),

                ActiveMembers(),

                // SizedBox(
                //   // height: 6,
                // ),
                ChatHeading(
                  labelName: 'Chat',
                  iconName: Icons.more_horiz_outlined,

                  iconSize: 32,
                ),
                SizedBox(
                  height: 6,
                ),

                ChatSection(),

              ],
            ),
          ),

        ),
      ),




    );
  }
}
