import 'package:flutter/material.dart';

import 'package:flutter_preferences_app/widgets/custom_drawer.dart';

import '../shared_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(title: const Text('Home Screen')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkMode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Género: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre: ${Preferences.name}'),
            const Divider()
          ],
        ));
  }
}
