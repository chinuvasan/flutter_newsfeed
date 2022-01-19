// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_newsfeed/screens/about.dart';
import 'package:flutter_newsfeed/screens/home.dart';
import 'package:flutter_newsfeed/screens/settings.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'WELCOME',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Color(0xffe1f5fe)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('Settings'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('About'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()))
            },
          ),
        ],
      ),
    );
  }
}
