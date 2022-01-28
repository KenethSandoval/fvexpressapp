import 'package:flutter/material.dart';
import './color_filters.dart';

class ProductsItem extends StatelessWidget {
	final String title;
	final Color color;

	ProductsItem(this.title, this.color);

	@override
	Widget build(BuildContext context) {
		return Card(
			clipBehavior: Clip.antiAlias,
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(1)
			), //RoundedRectangleBorder
			child: Stack(
				alignment: Alignment.center,
				children: [
					Ink.image(
						image: NetworkImage(
							'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.jMgOTymBAtTT2GYPtmWumQHaDp%26pid%3DApi&f=1',
						),
						child: InkWell(
                					onTap: () {},
              					),
              					fit: BoxFit.cover,
            				),
            				Text(
              					title,
              					style: TextStyle(
                					fontWeight: FontWeight.bold,
                					color: Colors.white,
                					fontSize: 14,
						),
            				),
				],
			), //Stack
		); // Card
	}
}
