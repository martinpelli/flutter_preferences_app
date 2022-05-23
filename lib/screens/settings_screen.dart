import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routerName = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: const CustomDrawer(),
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
