import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/widgets/custom_drawer.dart';

import '../shared_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routerName = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        drawer: const CustomDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              const Divider(),
              SwitchListTile.adaptive(
                  value: Preferences.isDarkMode,
                  title: const Text('DarkMode'),
                  onChanged: (value) {
                    setState(() {
                      Preferences.isDarkMode = value;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  title: const Text('Masculin'),
                  value: 1,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    setState(() {
                      Preferences.gender = value ?? 1;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  title: const Text('Femenine'),
                  value: 0,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    setState(() {
                      Preferences.gender = value ?? 2;
                    });
                  }),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    onChanged: (value) {
                      Preferences.name = value;
                    },
                    decoration: const InputDecoration(
                        labelText: 'Name', helperText: 'Username'),
                  ))
            ],
          )),
        ));
  }
}
