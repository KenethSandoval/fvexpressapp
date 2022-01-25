import 'package:flutter/material.dart';
import './ui/homescreen.dart';

class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			theme: ThemeData.dark(),
			title: 'FVExpress',
			home: HomeWidget(),	
		);
	}
}
