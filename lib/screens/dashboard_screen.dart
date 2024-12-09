import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TAP2024'),
      ),
      drawer: myDrawer(context),
    );
  }

  Widget myDrawer(context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Cesar Eduardo Martinez Arredondo'),
            accountEmail: Text('21030441@itcelaya.edu.mx'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/challenge");
            },
            title: const Text('Practica 1'),
            subtitle: const Text('Challenge'),
            leading: const Icon(Icons.code),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/movies");
            },
            title: const Text('Popular Movies'),
            subtitle: const Text('Test api'),
            leading: const Icon(Icons.movie),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            title: const Text('Salir'),
            leading: const Icon(Icons.exit_to_app),
            trailing: const Icon(Icons.chevron_right),
          ),
          DayNightSwitcher(
            isDarkModeEnabled: false,
            onStateChanged: (isDarkModeEnabled) {},
          )
        ],
      ),
    );
  }
}
