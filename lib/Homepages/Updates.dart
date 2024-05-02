import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:status_view/status_view.dart';


List<Map<String, dynamic>> ChatDetails = [
  {'name': 'User 1', 'image': 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTOH7v9X1Y0sB1fCgK2Hj9Sz9gGVZ8XiaB6mMADnAxhDt6vx7igOJJASEwU6JqJTLlb2-_l84Ge5gk1LjU'},
  {'name': 'User 2', 'image': 'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTOH7v9X1Y0sB1fCgK2Hj9Sz9gGVZ8XiaB6mMADnAxhDt6vx7igOJJASEwU6JqJTLlb2-_l84Ge5gk1LjU'},

];

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Updates'),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 25.h),
                  child: Text(
                    'Status',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Status privacy'),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  ChatDetails.length,
                  (index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          StatusView(
                            radius: 40,
                            spacing: 15,
                            strokeWidth: 2,
                            indexOfSeenStatus: 2,
                            numberOfStatus: 5,
                            padding: 4,
                            centerImageUrl: ChatDetails[index]['image'],
                            seenColor: Colors.grey,
                            unSeenColor: Colors.green,
                          ),
                          Text(
                            ChatDetails[index]['name'],
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Divider(
                height: 50.h,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'Channels',
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuButton(
                      icon: Icon(
                        Icons.add,
                        size: 30.r,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(child: Text('Create a channel')),
                        PopupMenuItem(child: Text('Find channels')),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 9.w, bottom: 15.w),
                      child: CircleAvatar(
                        radius: 35.r,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/c5/86/f2/c586f2d28e9fd2df8748fff3265e9e1e.jpg'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.w, bottom: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Dream11',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 150.w),
                                Text(
                                  '1:54pm',
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.h),
                              child: Row(
                                children: [
                                  Icon(Icons.image, size: 20.r),
                                  Text(
                                    'React with the colour of your favourite',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    'Find channels',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all  >',
                    style: TextStyle(
                      color: Colors.green[600],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  ChatDetails.length,
                  (index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        height: 180.h,
                        width: MediaQuery.of(context).size.width / 3.w,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: CircleAvatar(
                                radius: 35.r,
                                backgroundImage:
                                    NetworkImage(ChatDetails[index]['image']),
                              ),
                            ),
                            Text(
                              ChatDetails[index]['name'],
                              style: TextStyle(color: Colors.black),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(Colors.green),
                              ),
                              onPressed: () {},
                              child: Text('Follow'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 70.w,
                  height: 50.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.edit),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 80.w,
                  height: 60.h,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.green,
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}