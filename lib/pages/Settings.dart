
import 'package:flutter/material.dart';
import 'package:tu_comida/imports/languages_screen.dart';
import 'package:tu_comida/imports/settings_ui.dart';
//import 'package:package_info/package_info.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);
  

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notif = true;
  bool data = false;
  bool wifi = true;

  bool x = true; 

  @override
  Widget build(BuildContext context) {
    return x ? getSettings(context) : LanguagesScreen();
  }

Widget getSettings(context){
  return SettingsList(
        sections: [
          SettingsSection(
            title: 'Settings',
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onTap: () {
                  setState(() {
                    x = false;
                  });
                },
              ),
              SettingsTile(
                  title: 'Version',
                  subtitle: "0.1",
                  leading: Icon(Icons.cloud_queue)),
            ],
          ),
          SettingsSection(
            title: 'Notifications',
            tiles: [
              SettingsTile.switchTile(
                title: 'Allow Notifications',
                leading: Icon(Icons.notifications_active),
                switchValue: notif,
                onToggle: (bool value) {
                  setState(() {
                    notif = value;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Data & Storagge',
            tiles: [
              SettingsTile.switchTile(
                title: 'Mobile Data',
                subtitle: 'Mobile Data',
                leading: Icon(Icons.signal_cellular_4_bar),
                switchValue: data,
                onToggle: (bool value) {
                  setState(() {
                    data = value;
                  });
                },
              ),
              SettingsTile.switchTile(
                title: 'Wifi',
                subtitle: 'Wifi Data',
                leading: Icon(Icons.wifi),
                switchValue: wifi,
                onToggle: (bool value) {
                  setState(() {
                    wifi = value;
                  });
                },
              ),
            ],
          ),
          SettingsSection(
            title: 'Misc',
            tiles: [
              SettingsTile(
                  title: 'Terms of Service', leading: Icon(Icons.description)),
              SettingsTile(
                  title: 'About',
                  leading: Icon(Icons.info),
              ),
            ],
          )
        ],
    );
}

}