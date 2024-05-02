import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/chatdetails.dart';
import 'package:flutter_application_1/Homepages/const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

final TextEditingController textedit = TextEditingController();
bool value1 = true;

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(ChatDetails[0]['image']),
                radius: 20,
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sabith',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Last seen recently',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.videocam_outlined),
              onPressed: () {
                print('Call button pressed');
              },
            ),
            IconButton(
              icon: Icon(Icons.call_outlined),
              onPressed: () {
                print('Video call button pressed');
              },
            ),
            PopupMenuButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(child: Text('View contact')),
                PopupMenuItem(child: Text('Media, links, and docs')),
                PopupMenuItem(child: Text('Search')),
                PopupMenuItem(child: Text('Mute notification')),
                PopupMenuItem(child: Text('Disappearing messages')),
                PopupMenuItem(child: Text('Wallpaper')),
                PopupMenuItem(child: Text('More')),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          BubbleSpecialThree(
            text: 'Added iMessage shape bubbles',
            color: Colors.green.shade200,
            tail: false,
            textStyle:
                TextStyle(color: Color.fromARGB(255, 42, 40, 40), fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'Please try and give some feedback on it!',
            color: Colors.green.shade200,
            tail: true,
            textStyle:
                TextStyle(color: Color.fromARGB(255, 42, 40, 40), fontSize: 16),
          ),
          BubbleSpecialThree(
            text: 'Sure',
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "I tried. It's awesome!!!",
            color: Color(0xFFE8E8EE),
            tail: false,
            isSender: false,
          ),
          BubbleSpecialThree(
            text: "Thanks",
            color: Color(0xFFE8E8EE),
            tail: true,
            isSender: false,
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextField(
                    controller: textedit,
                    onChanged: (value) => setState(() {
                      value1 = !value1;
                    }),
                    style: TextStyle(
                      color: black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.emoji_emotions_outlined),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.attach_file),
                          ),
                          textedit.text.isEmpty
                              ? Visibility(
                                  visible: value1,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.currency_rupee_sharp),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.camera_alt_outlined),
                                      ),
                                    ],
                                  ),
                                )
                              : Visibility(
                                  visible: false,
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.currency_rupee_sharp),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.camera_alt_outlined),
                                      ),
                                    ],
                                  ),
                                )
                        ],
                      ),
                      hintText: 'Message',
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: green,
                radius: 27,
                child: IconButton(
                  color: white,
                  icon: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
