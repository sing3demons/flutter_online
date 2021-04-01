import 'package:flutter/material.dart';
import 'package:flutter_online/pages/About_page.dart';
import 'package:flutter_online/pages/contact_page.dart';
import 'package:flutter_online/pages/home_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SingDev',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/about': (BuildContext context) => AboutPage(),
        '/contact': (BuildContext context) => ContactPage(),
      },
    );
  }
}
