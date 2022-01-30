import 'package:flutter/material.dart';
import '../blocs/grocery_store_bloc.dart';

const _backgroundColor = Color(0XFFF6F5F2);
const _cartBarHeight = 100.0;

class GroceryStoreHome extends StatefulWidget {
  @override
  _GroceryStoreHomeState createState() => _GroceryStoreHomeState();
}

class _GroceryStoreHomeState extends State<GroceryStoreHome> {
  final bloc = GroceryStoreBloc();

  void  _onVerticalGesture(DragUpdateDetails details) {
    print(details.primaryDelta);
    if (details.primaryDelta! < -2) {
      bloc.changeToCart();
    } else if(details.primaryDelta! > 12.00) {
      bloc.changeToNormal();
    }
  }

  double? _getTopForWhitePanel(GroceryState state, Size size) {
    if(state == GroceryState.normal) {
      return -_cartBarHeight;
    } else if(state == GroceryState.cart) {
      return -(size.height - kToolbarHeight - _cartBarHeight / 2);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
      return AnimatedBuilder(
        animation: bloc,
        builder: (context, _) {
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
                        top: _getTopForWhitePanel(bloc.groceryState, size),
                        height: size.height - kToolbarHeight,
                        child: Container(
                          decoration: BoxDecoration(	
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(
	                        30,
                              ),
                              bottomRight: Radius.circular(
                                30
                              ),
                            ), //BorderRadius.only
                          ), //BoxDecoration
                        ), //Container
                       ), //Positioned
                      Positioned(
                        left: 0,
                        right: 0,
                        top: size.height - kToolbarHeight - _cartBarHeight,
                        height: size.height,
                        child: GestureDetector(
                          onVerticalDragUpdate: _onVerticalGesture,
                          child: Container(
                            color: Colors.black,
                          ), //Container
                        ), //GestureDetector
                      ), //Positioned
                    ],
                  ), //Stack
                ), //Expanded
              ],
             ), //Column
            ); //Scaffold
          }
        ); //AnimatedBuilder
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
	        color: Colors.black
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
    ); //Container
  }
}

