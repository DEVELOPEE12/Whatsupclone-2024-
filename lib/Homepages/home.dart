import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChatPages/chatpage2.dart';
import 'package:flutter_application_1/ChatPages/chatpage3.dart';
import 'package:flutter_application_1/ChatPages/chatpage1.dart';
import 'package:flutter_application_1/Homepages/chatdetails.dart';
import 'package:flutter_application_1/Homepages/const.dart';
import 'package:flutter_application_1/popupmenu/Starredmessages.dart';
import 'package:flutter_application_1/popupmenu/linkdevice.dart';
import 'package:flutter_application_1/popupmenu/newbroadcast.dart';
import 'package:flutter_application_1/popupmenu/newgroup.dart';
import 'package:flutter_application_1/popupmenu/payment.dart';
import 'package:flutter_application_1/popupmenu/settings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   TextEditingController searchController=TextEditingController();

  List<Map<String, dynamic>> filteredChats = List.from(ChatDetails);

  // @override
  // void initState() {
  //   super.initState();
  //   searchController = TextEditingController();
  //   filteredChats.addAll(ChatDetails);
  // }


  void filterChat(String query) {
    setState(() {
      filteredChats = ChatDetails
      .where((chat)=>chat['name']['message'].toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child:
                IconButton(icon: Icon(Icons.qr_code_scanner), onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () async {
                final ImagePicker picker = ImagePicker();
                XFile? image =
                    await picker.pickImage(source: ImageSource.camera);
                if (image != null) {
                  print('no image');
                }
              },
              child: Icon(Icons.camera_alt),
            ),
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('New group'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Newgroup()),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('New broadcast'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Newbroadcast()),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Linked device'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LinkDevice()),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Starred messages'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StarredMessage()),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Payments'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => paymentPage()),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Settings'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
                  );
                },
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: filterChat,
              style: TextStyle(color: black),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search....',
                filled: true,
                fillColor: Colors.grey.shade200,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredChats.length,
              itemBuilder: (context, index) {
                final chat = filteredChats[index];
                return ListTile(
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        chat['time'],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      CircleAvatar(
                          radius: 10.r,
                          backgroundColor: green,
                          child: Text('2',
                              style: TextStyle(
                                  color: white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(chat['image']),
                  ),
                  title: Text(
                    chat['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(chat['message']),
                  onTap: () {
                    if (chat['name'] == 'Sabith') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    } else if (chat['name'] == 'Afsal') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatPage2()));
                    } else if (chat['name'] == 'Aslah') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatPage3()));
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
