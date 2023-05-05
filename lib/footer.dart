import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/aboutus.dart';
import 'package:flutter_application_1/home.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      color: Color.fromARGB(255, 37, 37, 37),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Supercharge your brand with Creative Juice Studio',
              style: TextStyle(
                fontSize: 12.0,
                color: Color.fromARGB(255, 248, 247, 255),
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.mail,
                color: Color.fromARGB(255, 248, 247, 255),
                size: 20,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.phone,
                color: Color.fromARGB(255, 248, 247, 255),
                size: 20,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.location_on,
                color: Color.fromARGB(255, 248, 247, 255),
                size: 20,
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
