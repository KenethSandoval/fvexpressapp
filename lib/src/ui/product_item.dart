import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
	final String title;
	final Color color;

	ProductsItem(this.title, this.color);

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: const EdgeInsets.all(15),
			child: Text(title),
			decoration: BoxDecoration(
				gradient: LinearGradient(
					colors: [
						color.withOpacity(0.7),
						color
					],
					begin: Alignment.topLeft,
					end: Alignment.bottomRight
				), //LinearGradient
				borderRadius: BorderRadius.circular(15)	
			), //BoxDecoration
		); //Container
	}
}
