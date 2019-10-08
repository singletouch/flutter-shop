import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        "/":(context)=> MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
      },
      initialRoute:"/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  static const List<String> images = <String>[
    'banner.png',
    'banner2.png',
    'banner3.png',
    'banner4.png'
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
              height: 112.0,
              child: new Swiper(
                  itemBuilder: (ctx, index) => Image.asset(
                    'assets/images/${MyHomePage.images[index]}',
                    fit: BoxFit.fill,
                  ),
                  itemCount: MyHomePage.images.length,
                  pagination: new SwiperPagination()
              )
          ),
        ],
      )
    );
  }
}