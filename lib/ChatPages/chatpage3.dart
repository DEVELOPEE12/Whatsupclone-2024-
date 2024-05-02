import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/const.dart';

class ChatPage3 extends StatefulWidget {
  const ChatPage3({Key? key}) : super(key: key);

  @override
  State<ChatPage3> createState() => _ChatPageState();
}

final TextEditingController textedit = TextEditingController();
bool value1 = true;

class _ChatPageState extends State<ChatPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTWzU5xGb9TDAUBVPveqHiId_d_8ltGGdc9UGI1byc2VLNZ4rO06AnRF057SkbL8NfEgpF9Zr44dEeZTNc'),
                  radius: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 84.0),
                child: Text(
                  'Aslah',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  icon: Icon(
                    Icons.videocam_outlined,
                    size: 40,
                  ),
                  onPressed: () {
                    print('Call button pressed');
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.call_outlined,
                  size: 30,
                ),
                onPressed: () {
                  print('Video call button pressed');
                },
              ),
              PopupMenuButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('View contact')),
                  PopupMenuItem(child: Text('Media, links, and docs')),
                  PopupMenuItem(child: Text('search')),
                  PopupMenuItem(child: Text('Mute notification')),
                  PopupMenuItem(child: Text('Disappearing messages')),
                  PopupMenuItem(child: Text('Wallpaper')),
                  PopupMenuItem(child: Text('More')),
                ],
              ),
            ],
          ),
        ],
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
