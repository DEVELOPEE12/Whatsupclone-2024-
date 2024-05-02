import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/chatdetails.dart';

class Newgroup extends StatelessWidget {
  const Newgroup({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New group', style: TextStyle(fontSize: 20)),
            Text(
              'Add members',
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
            Divider(
              color: Colors.grey.shade100,
              thickness: 2,
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Contacts on Whatsapp',
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: List.generate(
                ChatDetails.length,
                (index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(ChatDetails[index]['image']),
                  ),
                  title: Text(ChatDetails[index]['name']),
                  subtitle: Text(ChatDetails[index]['subtitle']),
                ),
              ),
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
