import 'package:flutter/material.dart';
import './ui/homescreen.dart';

class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'FVExpress',
			home: HomeWidget(),	
		);
	}
}
