import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => login(),
    });
  }
  // This widget is the root of your application.
}
