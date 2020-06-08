import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';

class settingscreen extends StatefulWidget {
  @override
  _settingscreenState createState() => _settingscreenState();
}

class _settingscreenState extends State<settingscreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.red));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        cardColor: Colors.white,
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: settings(),
    );
  }
}

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        backgroundColor: Colors.white,
        sections: [
          SettingsSection(
            title: 'SETTINGS',
            tiles: [
              SettingsTile(
                title: 'Account Settings',
                subtitle: 'hosin211',
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Notification Settings',
                subtitle: 'All On',
                leading: Icon(
                  Icons.notifications_active,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(
                  Icons.language,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'LEGAL',
            tiles: [
              SettingsTile(
                title: 'Terms',
                leading: Icon(
                  Icons.account_balance,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Privacy',
                leading: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Credits',
                leading: Icon(
                  Icons.create,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'SUPPORT',
            tiles: [
              SettingsTile(
                title: 'Help',
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Report abuse',
                leading: Icon(
                  Icons.report_problem,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              SettingsTile(
                title: 'Smash cache',
                leading: Icon(
                  Icons.donut_small,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
