import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/home.dart';

class AppDrawer extends AboutUs {
  const AppDrawer({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 37, 37, 37)
          ),
          child: Text(
            'Creative Juice Studio',
            style: TextStyle(
              color: Color.fromARGB(255, 248, 247, 255),
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Color.fromARGB(255, 37, 37, 37)),
          title: Text('Home Page'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
          ListTile(
            leading: Icon(Icons.article, color: Color.fromARGB(255, 37, 37, 37)),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUs()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.storefront, color: Color.fromARGB(255, 37, 37, 37)),
          title: Text('Services'),
          onTap: () {
          },
        ),
        ],
      ),
    );
  }
}