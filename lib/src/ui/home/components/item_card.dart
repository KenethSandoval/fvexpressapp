import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
	children: <Widget>[
	  Expanded(
	    child: Container(
	      padding: EdgeInsets.all(kDefaultPadding),
	      decoration: BoxDecoration(
	        color: product.color,
		borderRadius: BorderRadius.circular(16),
	      ), //BoxDecoration
	      child: Hero(
		tag: "${product.id}",
		child: Image.asset(product.image!),
	      ), //Hero
	    ), //Container
	  ),//Expanded
	  Padding(
	    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding /4),
	    child: Text(
	      product.title!,
	      style: TextStyle(color: kTextLightColor),
	    ), //Text
	  ), //Padding
	  Text(
	    "\$${product.price}",
	    style: TextStyle(fontWeight: FontWeight.bold),
	  ),
	],
      ), //Column
    ); //GestureDetector
  }
}
