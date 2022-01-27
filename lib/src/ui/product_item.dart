import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
	final String title;
	final Color color;

	ProductsItem(this.title, this.color);

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: const EdgeInsets.all(15),
			child: Card(
				child: InkWell(
					splashColor: Colors.blue.withAlpha(30),
					onTap: () {
						debugPrint('Card tapped');
					},
					child: SizedBox(
						width: 500,
						height: 300,
						child: Text(title),
					),
				), //InkWell
			), //Card
		); //Container
	}
}

/*
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
}*/
