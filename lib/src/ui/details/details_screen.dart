import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../models/Product.dart';
import './components/body.dart';

class DetailsScreen extends StatlessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    ); //Scaffold
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
	icon: SvgPicture.asset(
	  'assets/icons/back.svg',
	  color: Colors.white,
	),
	onPressed: () => Navigator.pop(context),
      ), //IconButton
      actions: <Widget> [
        IconButton(
	  icon: SvgPicture.asset("assets/icons/search.svg"),
	  onPressed: () {},
	),
	IconButton(
	  icon: SvgPicture.asset("assets/icons/cart.svg"),
	  onPressed: () {},
	),
	SizedBox(width: kDefaultPadding / 2),
      ],
    ); //AppBar
  }
}
