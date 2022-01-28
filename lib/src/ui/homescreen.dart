import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';
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
	ListScreen(),
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

class SplashScreen extends StatelessWidget {
	const SplashScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return AnimatedSplashScreen(
			splash: Column(
				children: [
					const Text('cargando...')
				],
			), //Column
			backgroundColor: Colors.red,
			nextScreen: HomeWidget(),
			duration: 4000,
			splashTransition: SplashTransition
		); //Container
	}
}


class GridScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container( 
      child: GridView(
      	padding: const EdgeInsets.all(5),
	children: DUMMY_PRODUCT.map((product) => ProductsItem(product.title, product.color)).toList(),
	gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
		maxCrossAxisExtent: 200,
		childAspectRatio: 3/2,
		crossAxisSpacing: 10,
		mainAxisSpacing: 10
	), //SliverGridDelegateWithFixedCrossAxisCount
      ), //GridView
    ); // Container
  }
}


class ListScreen extends StatelessWidget {
	final data_dump = <Widget> [
					Container(
						height: 50,
						color: Colors.amber[600],
						child: const Center(child: Text('Entry A')),
					),
					Container(
						height: 50,
						color: Colors.amber[500],
						child: const Center(child: Text('Entry B')),
					),
					Container(
						height: 50,
						color: Colors.amber[100],
						child: const Center(child: Text('Entry C')),
					),
				];
	@override
	Widget build(BuildContext context){
		return ListView.separated(
			padding: const EdgeInsets.all(8),
			itemCount: data_dump.length,
			itemBuilder: (BuildContext context, int index)  {
				return data_dump[index];
			},
			separatorBuilder: (BuildContext context, int index) => const Divider(),
		); //ListView
	}
}
