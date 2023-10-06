import 'package:flutter/material.dart';

import 'package:messenger_app/features/profile/profile_page.dart';
import 'bottom_navigation.dart';
import 'features/home/home_page.dart';
import 'features/onboard/OnBoardingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: OnBoardingPage(),


    );
  }
}


