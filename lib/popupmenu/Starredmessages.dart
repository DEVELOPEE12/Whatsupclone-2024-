import 'package:flutter/material.dart';

class StarredMessage extends StatefulWidget {
  const StarredMessage({super.key});

  @override
  State<StarredMessage> createState() => _StarredMessageState();
}

class _StarredMessageState extends State<StarredMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starred Message'),
      ),
      body: Center(
        child: Container(
          width:400,
          height: 400,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/WhatsApp .jpg'))),
        ),
      ),
    );
  }
}