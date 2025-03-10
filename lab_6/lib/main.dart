import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lab_6/home.dart';

void main() {
  runApp(const lab06());
}

class lab06 extends StatelessWidget {
  const lab06({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 06',
      home: Scaffold(
        
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 90,
                color: Colors.blue.shade100,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Brand(Brands.google_photos_2),
                      Icon(Icons.account_balance_rounded, size: 50),

                      TextButton.icon(
                        onPressed: () {},
                        label: Text("Close"),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                trailing: Icon(Icons.arrow_drop_down),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text('Recent'),
                //trailing: Icon(Icons.arrow_drop_down),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Images'),
                //trailing: Icon(Icons.arrow_drop_down),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.play_circle_outline),
                title: Text('Video'),
                //trailing: Icon(Icons.arrow_drop_down),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lab 06'),
        ),
        body: Home(),
      ),
    );
  }
}
