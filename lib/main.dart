import 'package:flutter/material.dart';
import './constants.dart';
import './src/ui/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FVExpress',
      theme: ThemeData(
       	textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
	visualDensity: VisualDensity.adaptivePlatformDensity,
      ), //ThemeData
      home: HomeScreen(),
    ); //MaterialApp
  }
}
