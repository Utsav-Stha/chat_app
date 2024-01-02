import 'package:flutter/material.dart';
import 'package:messenger_app/features/home/home_page.dart';

import '../../bottom_navigation.dart';
import '../../datas/profile_feature_data.dart';
import 'widgets/icon_widget.dart';

class ProfilePage extends StatelessWidget {
   ProfilePage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0,20.0,8.0,8.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return BottomNavigation();
                      }));
                    },
                     icon: Icon(Icons.arrow_back)),
                  Icon(Icons.more_vert_rounded),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_pic_1.jpg'),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                  child: Text(
                      'Terry Williams',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                  )),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWidget(icon: Icons.phone,iconLabel: 'Audio',),
                  IconWidget(icon: Icons.video_camera_back, iconLabel: 'Video'),
                  IconWidget(icon: Icons.person, iconLabel: 'Profile'),
                  IconWidget(icon: Icons.notifications, iconLabel: 'Mute'),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: featureIcons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(featuresName[index],style: TextStyle(
                              fontSize: 16
                          ),),
                          Icon(featureIcons[index]),
                        ],
                      ),
                    );
                  },)

            ],
          ),
        ),
      ),
    );
  }
}
