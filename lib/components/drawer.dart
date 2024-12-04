import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  size: 55,
                  color: Colors.white,
                ),
                Text(
                  'Ektaviphonh Thongphet',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  '11279@nuol.edu.la',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.home),
                SizedBox(
                  width: 10,
                ),
                Text('home page'),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.category),
                SizedBox(
                  width: 10,
                ),
                Text('category'),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.support_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('support page'),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.content_copy_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('content copy'),
              ],
            ),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
