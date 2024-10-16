// screens/settings_screen.dart

import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Compte'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Logique pour les paramètres de compte
            },
          ),
          ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
            onTap: () {
              // Logique pour les paramètres de notifications
            },
          ),
          ListTile(
            title: Text('Confidentialité'),
            leading: Icon(Icons.lock),
            onTap: () {
              // Logique pour les paramètres de confidentialité
            },
          ),
        ],
      ),
    );
  }
}