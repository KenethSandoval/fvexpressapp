import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
      	icon: SvgPicture.asset("assets/icons/back.svg"),
	onPressed: () {},
      ), //IconButton
      actions: <Widget>[
      	IconButton(
      	  icon: SvgPicture.asset(
	  	"assets/icons/search.svg", 
		color: kTextColor,
	  ),
	  onPressed: () {},
	),
	IconButton(
      	  icon: SvgPicture.asset(
	  	"assets/icons/search.svg", 
		color: kTextColor,
	  ),
	  onPressed: () {},
	),
	SizedBox(width: kDefaultPadding / 2)
      ],
    ); //AppBar
  }
}
