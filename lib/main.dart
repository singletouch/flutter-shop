import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'views/wrapper.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '漫城小店',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainWrapper(),
    );
  }
}
