import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/aboutus.dart';

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
            color: Colors.black,
          ),
          child: Text(
            'Creative Juice Studio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.storefront, color: Colors.black),
          title: Text('Marketing'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.movie, color: Colors.black),
          title: Text('Video Editing'),
          onTap: () {
          },
        ),
        ListTile(
          leading: Icon(Icons.palette, color: Colors.black),
          title: Text('Graphic Design'),
          onTap: () {
            },
         ),
        ],
      ),
    );
  }
}