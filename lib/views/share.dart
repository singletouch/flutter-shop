import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop/views/share/InheritWidgetDemo.dart';
import 'package:flutter_shop/views/share/CustomProviderDemo.dart';
import 'package:flutter_shop/views/share/ProviderDemo.dart';
import 'package:flutter_shop/widget/swiper_pagination.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class SharePage extends StatefulWidget {
  SharePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("数据共享demo"),
      ),
      body: Column(
        children: <Widget>[
          _button("InheritWidgetDemo", () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (_) => InheritedWidgetDemo(),
              ),
            );
          }),
          _button("CustomProviderDemo", () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (_) => CustomProviderDemo(),
              ),
            );
          }),
          _button("ProviderDemo", () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (_) => ProviderDemo(),
              ),
            );
          }),
          _button("InheritWidget", () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (_) => CustomProviderDemo(),
              ),
            );
          })
        ],
      )
    );
  }

  Widget _button(String title, event) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0),
      child: RaisedButton(
        child: Text(title),
        padding: EdgeInsets.all(15.0),
        color: Colors.blue,
        highlightColor: Colors.blue[700],
        colorBrightness: Brightness.dark,
        splashColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        onPressed: event,
      ),
    );
  }
}
