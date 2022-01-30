import 'package:flutter/material.dart';

const _backgroundColor = Color(0XFFF6F5F2);
const _cartBarHeight = 100.0;

class GroceryStoreHome extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final size = MediaQuery.of(context).size;
		return Scaffold(
			body: Column(
				children: [
					_AppBarGrocery(),
					Expanded(
						child: Stack(
							children: [
								Positioned(
									left: 0,
									right: 0,
									top: -_cartBarHeight,
									height: size.height - kToolbarHeight,
									child: Container(
										color: Colors.white,
									), //Container
								), //Positioned
								Positioned(
									left: 0,
									right: 0,
									top: 0,
									height: size.height - kToolbarHeight,
									child: Container(
										color: Colors.white,
									), //Container
								), //Positioned
							],
						), //Stack
					), //Expanded
				],

			), //Column
		); //Scaffold
	}
}


class _AppBarGrocery extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Container(
			height: kToolbarHeight,
			color: _backgroundColor,
			child: Row(
				children: [
					BackButton(
						color: Colors.black,
					), //BackButton
					const SizedBox(width: 10),
					Expanded(
						child: Text(
							'FVExpress', 
							style: TextStyle(
									color: Color.black
								), //TextStyle
							), //Text
						), //Expanded
					IconButton(
						icon: Icon(
							Icons.settings,
						), //Icon
						onPressed: () => null,
					), //IconButton
				],
			), //Row
		), //Container
	}

}

