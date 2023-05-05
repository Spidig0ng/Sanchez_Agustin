import 'package:flutter/material.dart';
import 'package:flutter_application_1/appdrawer.dart';
import 'package:flutter_application_1/footer.dart';
import 'package:flutter_application_1/searchfield.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color.fromARGB(255, 37, 37, 37)
      ),
      drawer: const AppDrawer(),
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SearchField(),
            const SizedBox(height: 100),
            const Text(
              'Welcome To Creative Juice Studio!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                 color: Color.fromARGB(255, 248, 247, 255)
              ),
            ),
            const Text(
              'We are a dynamic Creative Studio based in the Philippines, dedicated to providing comprehensive branding, advertising, and marketing solutions for brands, creators, and companies. Whether you need to build a strong brand identity, launch an effective advertising campaign, or develop a strategic marketing plan, we have the expertise and creativity to help you achieve your goals.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 248, 247, 255)
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Our Services',
              style: TextStyle(
                fontSize: 35, 
                fontWeight: FontWeight.bold,
                 color: Color.fromARGB(255, 248, 247, 255)
                 ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildServiceCard(
                  iconData: Icons.edit_note,
                  title: 'Branding',
                  description:
                      'Stand out from the competition with a unique brand identity crafted by our expert team.',
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildServiceCard(
                  iconData: Icons.computer,
                  title: 'Web Design',
                  description:
                      'We specialize in creating beautiful and functional websites that help you reach your goals.',
                ),
                _buildServiceCard(
                  iconData: Icons.camera_alt,
                  title: 'Photography',
                  description:
                      'Our professional photographers can help you capture stunning images for your business.',
                ),
                _buildServiceCard(
                  iconData: Icons.movie,
                  title: 'Video Editing',
                  description: 
                  'Video Editors can help you capture the viewers attention with out unique cuts and effects.',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
Widget _buildServiceCard(
      {required IconData iconData,
      required String title,
      required String description}) {
    return SizedBox(
      width: 500,
      height: 200,
      child: Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(iconData, size: 40),
            SizedBox(height: 5),
            Text(title, style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            Text(description, textAlign: TextAlign.center),
          ],
        ),
      ),
      ),
    );
  }
}