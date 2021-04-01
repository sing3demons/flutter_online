import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เกี่ยวกับเรา'),
      ),
      body: Center(
        child: Column(
          children: const <Widget>[
            Text('this is About page'),
          ],
        ),
      ),
    );
  }
}
