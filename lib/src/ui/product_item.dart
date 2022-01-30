import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
	final String title;
	final Color color;

	ProductsItem(this.title, this.color);

	@override
	Widget build(BuildContext context) {
		return ListTile(
                        leading: FlutterLogo(size: 56.0),
                        title: Text(title),
                        subtitle: Text('Item 1 subtitle'),
                        trailing: Icon(Icons.access_alarm),
                );
	}
}
