import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/chatdetails.dart';

class Newbroadcast extends StatefulWidget {
  const Newbroadcast({Key? key}) : super(key: key);

  @override
  State<Newbroadcast> createState() => _NewbroadcastState();
}

class _NewbroadcastState extends State<Newbroadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New broadcast', style: TextStyle(fontSize: 20)),
            Text(
              '0 of 256 selected',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Only contacts with +91 9605229709 in their address book will receive your broadcast messages',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15),
              ),
            ),
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: ChatDetails.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(ChatDetails[index]['image']),
                  ),
                  title: Text(ChatDetails[index]['name']),
                  subtitle: Text(ChatDetails[index]['subtitle']),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.arrow_forward),
          ),
        ),
      ),
    );
  }
}
