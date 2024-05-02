import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepages/const.dart';

class paymentPage extends StatelessWidget {
  const paymentPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payments',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
                Container(
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/WhatsApp1.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Scan any UPI QR code with your Whatsapp Camera.',
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(color: Colors.green.shade700),
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.green.shade800,
                            radius: 12,
                            child: Icon(
                              Icons.currency_rupee_sharp,
                              size: 18,
                              color: white,
                            ),
                          ),
                          title: Text('Send payment'),
                        ),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.qr_code,
                            color: Colors.green.shade800,
                          ),
                        ),
                        title: Text('Scan payment QR code'),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Column(
                    children: [
                      Text('Chat with businesses',
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 14, left: 5),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/f/fb/Delhi_Transport_Corporation_logo.png',
                                ),
                                radius: 30,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text('Delhi ', style: TextStyle(color: black)),
                            Text(
                              'Transport...',
                              style: TextStyle(color: black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  color: Colors.grey.shade100,
                  thickness: 2,
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'History',
                            style: TextStyle(
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Icon(Icons.library_books, size: 40, color: Colors.grey),
                    SizedBox(height: 10),
                    Text('No payment history',
                        style: TextStyle(
                            color: black, fontWeight: FontWeight.w300)),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('Payment methods', style: TextStyle(color: green)),
          ),
          Column(
            children: [
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: Icon(Icons.shield, color: green, size: 30),
                ),
                title: Column(
                  children: [
                    Text(
                      'To protect your security wharsapp does not store your UPI PIN or full bank account number. ',
                    ),
                    Row(
                      children: [
                        Text('Learn more',
                            style: TextStyle(
                                color: green, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Container(
                    color: white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add_circle_outline,
                                size: 30,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Add payment method',
                                      style: TextStyle(color: black)))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Divider(),
              SizedBox(
                width: double.infinity,
                child: Container(
                    color: white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.question_mark,
                                size: 25,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text('Help',
                                      style: TextStyle(color: black)))
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
              Divider(),
            ],
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height / 15,
          //   alignment: Alignment.center,
          //   decoration:
          //       BoxDecoration(image: DecorationImage(image: AssetImage(''))),
          // )
        ],
      ),
    );
  }
}
