import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
	const LoginPage({Key? key}) : super(key : key);

	@override
	_LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 70,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'FVExpress',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Crea tu cuenta o inicia sesion',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorWeight: 2,
                  indicatorColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(fontSize: 18.0),
                  tabs: [
                    Tab(text: 'Ingresar'),
                    Tab(text: 'Registrar'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffEFF0F6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                autocorrect: true,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Usuario',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffEFF0F6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                autocorrect: true,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Contraseña',
                                  filled: true,
                                  fillColor: Color(0xffEFF0F6),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).primaryColor),
                                child: Text(
                                  'Iniciar sesion',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffEFF0F6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                autocorrect: true,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Usuario',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffEFF0F6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                autocorrect: true,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Contraseña',
                                  filled: true,
                                  fillColor: Color(0xffEFF0F6),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffEFF0F6),
                                borderRadius: BorderRadius.circular(10),
                              ), 
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor:
                                        Theme.of(context).primaryColor),
                                child: Text(
                                  'Crear cuenta',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
