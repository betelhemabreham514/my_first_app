// business_card.dart ፋይል ውስጥ የሚቀመጥ ኮድ
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: Image(image: AssetImage('assets/profile.jpg'))
                // Icon(Icons.person, size: 50, color: Colors.teal),
                ),
            const Text(
              'Betelhem Abreham',
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'QA INTERN & IT STUDENT',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.white),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(Icons.email, color: Colors.teal),
                title: Text(
                  'betelhemabreham514@gmail.com',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 18.0),
                ),
                onTap: () {
                  _launchURL(
                    'mailto:betelhemabreham514@gmail.com',
                  ); // 👈 ኢሜይል መጻፊያ እንዲከፍት ያደርጋል
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: const Icon(Icons.code, color: Colors.teal),
                title: Text(
                  'https://github.com/betelhemabreham514/My-first-app',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 18.0),
                ),
                onTap: () {
                  _launchURL(
                    'https://github.com/betelhemabreham514/My-first-app',
                  ); // 👈 ብሮውዘር ላይ ሊንኩን ይከፍታል
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
