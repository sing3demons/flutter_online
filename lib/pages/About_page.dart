import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> msg = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('เกี่ยวกับเรา'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(),
            Text('email: ${msg['email']} age: ${msg['age']}'),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'About Page');
              },
              child: Text('home'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('contact'),
            ),
          ],
        ),
      ),
    );
  }
}
