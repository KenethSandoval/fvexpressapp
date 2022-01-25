import 'package:flutter/material.dart';
import './product_item.dart';
import '../dummy_data.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
  	GridScreen(),
        CustomScreen( color: Colors.pink ),
        CustomScreen( color: Colors.indigo ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FVExpress'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


class GridScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container( 
      child: GridView(
      	padding: const EdgeInsets.all(25),
	children: DUMMY_PRODUCT.map((product) => ProductsItem(product.title, product.color)).toList(),
	gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
		maxCrossAxisExtent: 200,
		childAspectRatio: 3/2,
		crossAxisSpacing: 20,
		mainAxisSpacing: 20
	), //SliverGridDelegateWithFixedCrossAxisCount
      ), //GridView
    ); // Container
  }
}

class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({ required this.color });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}
