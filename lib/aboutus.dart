import 'package:flutter/material.dart';
import 'appdrawer.dart';
import 'footer.dart';
import 'searchfield.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 37, 37, 37)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SearchField(),
            const SizedBox(height: 100.0),
            const CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/p.jpg'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Creative Juice Studio',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 248, 247, 255)
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'We are a dynamic Creative Studio based in the Philippines, dedicated to providing comprehensive branding, advertising, and marketing solutions for brands, creators, and companies. Whether you need to build a strong brand identity, launch an effective advertising campaign, or develop a strategic marketing plan, we have the expertise and creativity to help you achieve your goals.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 248, 247, 255)
                  ),
                ),
                ],
              ),
            ),
      bottomNavigationBar: Footer(),
    );
}
}