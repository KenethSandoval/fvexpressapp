import 'package:flutter/material.dart';

class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		print('test');
		return MaterialApp(
			theme: ThemeData.dark(),
			title: 'FVExpress',
			home: Scaffold(
				appBar: AppBar(
					title: Text('Bienvendo a FVExpress'),
				),
				body: Center(
					child: Text('Hello world'),
				),
			),	
		);
	}
}
