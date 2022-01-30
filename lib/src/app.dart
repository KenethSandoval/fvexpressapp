import 'package:flutter/material.dart';
import './ui/homescreen.dart';
import './ui/grocery_store.dart';

class App extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'FVExpress',
			home: Scaffold(
      			  body: Center(
        		   child: GroceryStoreHome(),
                          ),
			),
			//home: SplashScreen(),
		);
	}
}
