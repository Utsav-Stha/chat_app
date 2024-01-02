import 'package:flutter/material.dart';
import 'package:messenger_app/bottom_navigation.dart';
import 'package:messenger_app/config/hive/hive_data_source.dart';

import 'package:messenger_app/features/onboard/OnBoardingPage.dart';

class AppStateObserver extends StatefulWidget {
  const AppStateObserver({super.key});

  @override
  State<AppStateObserver> createState() => _AppStateObserverState();
}

class _AppStateObserverState extends State<AppStateObserver> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _handleRouting();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }

  void _handleRouting() async{
    var hive = HiveDataSource();
    bool result = await hive.isFirstInstalled();
    print("result : $result");
    if(result){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingPage(),),);
    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation(),),);

    }
  }
}
