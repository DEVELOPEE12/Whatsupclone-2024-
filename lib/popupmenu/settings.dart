import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/en/f/fb/Delhi_Transport_Corporation_logo.png'),
            ),
            title: Text('Azif'),
            subtitle: Text('Busy'),
            trailing: SizedBox(
              width: 70.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.qr_code),
                  ),
                  Icon(Icons.arrow_drop_down_circle_outlined),
                ],
              ),
            ),
          ),
          Divider(), 
          Expanded(
            child: ListView.builder(
              itemCount:15,
              itemBuilder: (context, index) {
                return 
               ListTile(
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/f/fb/Delhi_Transport_Corporation_logo.png'),
                  ),
                  title: Text(
                       'Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Security,notification,change number'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
