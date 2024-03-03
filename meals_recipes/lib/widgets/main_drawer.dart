import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import '../screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(
          key: key,
        );

  Widget buildListTile(
    IconData icon,
    String text,
    VoidCallback func,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: func,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(
              20,
            ),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'cooking',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            Icons.restaurant,
            'Meals',
            () {
              Navigator.of(context).pushReplacementNamed(
                '/',
              );
            },
          ),
          buildListTile(
            Icons.settings,
            'Settings',
            () {
              Navigator.of(context).pushReplacementNamed(
                SettingsScreen.routeName,
              );
            },
          ),
        ],
      ),
    );
  }
}
