import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_design/FirstScreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Food Order App',
      theme: ThemeData(
        primaryColor: Colors.white,

      ),

      //color: Colors.white,

      home:  FirstScreen(),

      debugShowCheckedModeBanner: false,
    );
  }

}