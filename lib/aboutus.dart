import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/main.dart';
import 'appdrawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.black,
      ),
      drawer: AppDrawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          const SizedBox (height: 20.0),
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage('../assets/p.jpg'),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Creative Juice Studio',
            style: TextStyle(
              fontSize: 25.0, 
              fontWeight: FontWeight.bold
              ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'We are a dynamic Creative Studio based in the Philippines, dedicated to providing comprehensive branding, advertising, and marketing solutions for brands, creators, and companies. Whether you need to build a strong brand identity, launch an effective advertising campaign, or develop a strategic marketing plan, we have the expertise and creativity to help you achieve your goals.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0
              ),
          ),
          const SizedBox(height: 100.0),
            const Text (
              'Supercharge your brand with Creative Juice Studio',
              style: TextStyle(
                fontSize: 12.0,
                fontStyle: FontStyle.italic,
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
                  ),
                  SizedBox(width: 5),
                Icon(
                  Icons.mail,
                  color: Colors.black,
                  size: 12,
                ),
             SizedBox(width: 5),
                Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 12,
                ),
             SizedBox(width: 5),
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 12,
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
