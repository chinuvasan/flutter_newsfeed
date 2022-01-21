import 'package:flutter/material.dart';
import 'package:flutter_newsfeed/screens/language_screen.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings UI')),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: [
              SettingsTile(
                title: Text('Language'),
                leading: Icon(Icons.language),
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(
                //       builder: (BuildContext context) => LanguagesScreen()));
                // },
              ),
              SettingsTile(
                  title: Text('Environment'), leading: Icon(Icons.cloud_queue)),
            ],
          ),
          SettingsSection(
            title: Text('Account'),
            tiles: [
              SettingsTile(
                  title: Text('Phone number'), leading: Icon(Icons.phone)),
              SettingsTile(title: Text('Email'), leading: Icon(Icons.email)),
              SettingsTile(
                  title: Text('Sign out'), leading: Icon(Icons.exit_to_app)),
            ],
          ),
          SettingsSection(
            title: Text('Secutiry'),
            tiles: [
              SettingsTile.switchTile(
                title: Text('Lock app in background'),
                leading: Icon(Icons.phonelink_lock),

                ///switchValue: lockInBackground,
                onToggle: (bool value) {
                  setState(() {
                    lockInBackground = value;
                  });
                },
              ),
              SettingsTile.switchTile(
                title: Text('Use fingerprint'),
                leading: Icon(Icons.fingerprint),
                onToggle: (bool value) {},
                // switchValue: false
              ),
              SettingsTile.switchTile(
                title: Text('Change password'),
                leading: Icon(Icons.lock),
                // switchValue: true,
                onToggle: (bool value) {},
              ),
            ],
          ),
          SettingsSection(
            title: Text('Misc'),
            tiles: [
              SettingsTile(
                  title: Text('Terms of Service'),
                  leading: Icon(Icons.description)),
              SettingsTile(
                  title: Text('Open source licenses'),
                  leading: Icon(Icons.collections_bookmark)),
            ],
          )
        ],
      ),
    );
  }
}
