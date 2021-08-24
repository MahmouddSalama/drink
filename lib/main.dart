import 'package:drink/screens/home_screen.dart';
import 'package:drink/screens/wellcom_screen.dart';
import 'package:flutter/material.dart';
main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Welcome(),
    );
  }
}
