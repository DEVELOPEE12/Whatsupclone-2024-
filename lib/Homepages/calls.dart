import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/chatdetails.dart';
import 'package:flutter_application_1/Homepages/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Calls'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Icon(Icons.qr_code_scanner),
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [PopupMenuItem(child: Text('Settings'))],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.link, color: white),
              radius: 30,
              backgroundColor: green,
            ),
            title: Text('Create a call link',
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 16)),
            subtitle: Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(color: black),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Recent',
              style: TextStyle(
                  color: black, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ChatDetails.length,
              itemBuilder: (context, index) {
                final callLog = ChatDetails[index];
                return ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(callLog['image']),
                    ),
                  ),
                  title: Text(
                    ChatDetails[index]['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_made, size: 20, color: green),
                      SizedBox(width: 5),
                      Text(ChatDetails[index]['date']),
                      Text(','),
                      Text(ChatDetails[index]['time']),
                      Spacer(),
                      Icon(
                        Icons.call,
                        color: green,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 70.w,
                height: 70.h,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.w,bottom: 10.w),
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: green,
                    child: Icon(Icons.add_ic_call,),

                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
