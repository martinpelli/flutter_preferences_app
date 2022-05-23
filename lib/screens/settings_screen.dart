import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/widgets/custom_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  static const String routerName = 'settings';

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
                  value: true,
                  title: const Text('DarkMode'),
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile(
                  title: const Text('Masculin'),
                  value: 1,
                  groupValue: 1,
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile(
                  title: const Text('Femenine'),
                  value: 0,
                  groupValue: 1,
                  onChanged: (value) {}),
              const Divider(),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Pelli',
                    decoration: const InputDecoration(
                        labelText: 'Name', helperText: 'Username'),
                  ))
            ],
          )),
        ));
  }
}
