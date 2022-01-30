import 'package:flutter/material.dart';

enum GroceryState {
	normal,
	details,
	cart,
}

class GroceryStoreBloc with ChangeNotifier {
	GroceryState groceryState = GroceryState.normal;

	void changeToNormal() {	
		GroceryState groceryState = GroceryState.normal;
		notifyListeners();
	}

	void changeToCart() {	
		GroceryState groceryState = GroceryState.cart;
		notifyListeners();
	}
}
