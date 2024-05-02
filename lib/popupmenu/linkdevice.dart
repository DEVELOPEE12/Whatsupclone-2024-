import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Homepages/const.dart';

class LinkDevice extends StatefulWidget {
  const LinkDevice({super.key});

  @override
  State<LinkDevice> createState() => _LinkDeviceState();
}

class _LinkDeviceState extends State<LinkDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linked device', style: TextStyle(color: black)),
      ),
      body: Column(
        children: [
          Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 252,
                height: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/WhatsApp Image.jpg'))),
              ),
            ),
          ),
          Text('Use WhatsApp on Web Desktop, and other devices',
              style: TextStyle(color: black)),
          TextButton(
              onPressed: () {},
              child: Text('Learn more',
                  style: TextStyle(color: Colors.blueAccent))),
          SizedBox(height: 30),
          SizedBox(
            width: 360,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              ),
              child: Text(
                'Link a device',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 8,
            color: Colors.grey.shade300,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 74),
                  child: Text('Device Status',
                      style: TextStyle(color: black, fontSize: 13)),
                ),
                SizedBox(height: 5),
                Text('Tap a device to log out',
                    style: TextStyle(color: black, fontSize: 15)),
              ],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundColor: green2,
              child: Icon(Icons.window,size: 28,color: white),
              
            ),
            title: Text('Windows',style: TextStyle(color: black)),
            subtitle: Text('Last active today at 11:09am',style: TextStyle(color: black)),
             
          )
        ],
      ),
    );
  }
}
