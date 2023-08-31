import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: SettingsList(
          sections: [
            SettingsSection(
              title: Text('Hello Omer!',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0), fontSize: 24)),
              tiles: [
                SettingsTile(
                  title: Text('My Home'),
                  leading: Icon(Icons.home,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {},
                ),
                SettingsTile(
                  title: Text('My Energy'),
                  leading: Icon(Icons.battery_charging_full,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement My Energy logic
                  },
                ),
                SettingsTile(
                  title: Text('Off Home'),
                  leading: Icon(Icons.home,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Off Home logic
                  },
                ),
                SettingsTile(
                  title: Text('Camera'),
                  leading: Icon(Icons.camera,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Camera logic
                  },
                ),
                SettingsTile(
                  title: Text('Messages'),
                  leading: Icon(Icons.message,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Messages logic
                  },
                ),
                SettingsTile(
                  title: Text('Family Access'),
                  leading: Icon(Icons.supervised_user_circle,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Family Access logic
                  },
                ),
                SettingsTile(
                  title: Text('Support'),
                  leading: Icon(Icons.support_agent,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Support logic
                  },
                ),
                SettingsTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.lock,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Change Password logic
                  },
                ),
                SettingsTile(
                  title: Text('Sign Out'),
                  leading: Icon(Icons.exit_to_app,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    // TODO: implement Sign Out logic
                  },
                ),
                SettingsTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings,
                      color: const Color.fromARGB(255, 0, 0, 0)),
                  onPressed: (context) {
                    ;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
