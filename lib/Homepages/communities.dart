import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunitesPage extends StatefulWidget {
  const CommunitesPage({super.key});

  @override
  State<CommunitesPage> createState() => _CommunitesPageState();
}

class _CommunitesPageState extends State<CommunitesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Communites'),
        actions: [
          IconButton(icon: Icon(Icons.qr_code_scanner), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {}),
          PopupMenuButton(
              itemBuilder: (context) =>
                  [PopupMenuItem(child: Text('settings'))],
              offset: Offset(0, 50.h))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Image.asset('assets/whatsapp.jpg'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text('Stay connected with a community',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: black,
                  fontSize: 18.h,
                )),
            SizedBox(height: 10.h),
            Text(
              textAlign: TextAlign.center,
              'Communites bring members together in topic-based groups and make it easy to get admin announcements.Any community you re to will appear here',
              style: TextStyle(
                color: black,
                fontSize: 13.h,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'See example communites >',
                  style: TextStyle(
                    color: green,
                  ),
                )),
                SizedBox(height: 20),
            SizedBox(
              height: 50.h,
              width: 340.h, 
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(green),
                ),
                onPressed: () {},
                child: Text(
                  'Start your community',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
