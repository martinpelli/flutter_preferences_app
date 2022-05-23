import 'package:flutter/material.dart';

import 'package:flutter_preferences_app/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text('Home Screen')),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
