import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formAbout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KPSing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                formAbout =
                    await Navigator.pushNamed(context, '/about', arguments: {
                  'email': 'sing@dev.com',
                  'age': 24,
                });
                setState(() {
                  formAbout = formAbout;
                });
              },
              child: Text('about'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('contact'),
            ),
            Text('form about ${formAbout ?? ''}'),
          ],
        ),
      ),
    );
  }
}
