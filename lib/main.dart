import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '漫城小店',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => MyHomePage(title: '漫城小店'), //注册首页路由
      },
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  static const List<Map> banner = <Map>[
    {
      "Img":
          "http://au.kiigou.com//UploadFile/2018052513/S4gmbTS1JUWuTLi9Vl61vg.jpg",
      "Name": "",
      "Url": "https://qiyigou.koalafield.com/Wechat/Detail/13119"
    },
    {
      "Img":
          "http://au.kiigou.com//UploadFile/2018052513/DbU5RmnNXkGevF_I4r9ZDQ.jpg",
      "Name": "",
      "Url": "http://t.koalafield.com/?KbMadF8QyEexJExjMVdnmQ"
    },
    {
      "Img":
          "http://au.kiigou.com//UploadFile/2018052513/xyw2uoH8VEOhC-tU8bZP3A.jpg",
      "Name": "",
      "Url":
          "https://qiyigou.koalafield.com/wechat/couponhome?t=D521CBF10FB39044FC0B3730D0203B28"
    }
  ];

  static const List<Map> category = <Map>[
    {
      "name": "领券中心",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/fKdD1gHjv0qxudnYERPOOA.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "找折扣",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/nCgoBf-TtkyTsAqvLgVptw.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "排行榜",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/Z-To1H3Xp0ac33wAX0LPwA.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "品牌特卖",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/Y1F7d_1cMECFJ9AmVyKKgg.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "母婴",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/gT0Lc0irTUaiqNQmS9RbgA.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "领豆子",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/yFRJC51yZEKLrDoQ8VbEGg.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "男装馆",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/95bFRa_6tESTENbhARzquw.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "女装馆",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/PYcxjYA9RkSbPzQIhS49vw.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "手机馆",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/WY_GGcFVkkWL5BLuJuNKPw.png",
      "url": "https://www.baidu.com/"
    },
    {
      "name": "保健品",
      "img":
          "https://au.kiigou.com/UploadFile/2018052723/eVSayAbW9kC0pcfyMzn-KA.png",
      "url": "https://www.baidu.com/"
    }
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFecf0f1),
        body: Column(
          children: <Widget>[
            Container(
                height: 183.0,
                child: new Swiper(
                  itemBuilder: (ctx, index) =>
                      new Image.network(MyHomePage.banner[index]["Img"]),
                  itemCount: MyHomePage.banner.length,
                )),
            Container(
              width: double.infinity,
              height: 164.00,
              margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
              ),
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: new Swiper(
                outer: false,
                loop: false,
                itemBuilder: (c, i) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 0.0),
                    child: new Wrap(
                      runSpacing: 15.0,
                      children: MyHomePage.category.map((item) {
                        return new FractionallySizedBox(
                            widthFactor: 0.2,
                            child: new Column(
                              children: <Widget>[
                                new Container(
                                  child: new Image.network(item["img"]),
                                  height: 36.0,
                                  width: 36.0,
                                  margin: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 5.0),
                                ),
                                new Text(
                                  item["name"],
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: const Color(0xFF666666)),
                                )
                              ],
                            ));
                      }).toList(),
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(bottom: 10.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    width: 75.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(top: 15.0),
                          child: new Text(
                            "大家",
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF333333)),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(bottom: 5.0),
                          child: new Text(
                            "都在买",
                            style: TextStyle(
                                fontSize: 12.0, color: const Color(0xFF333333)),
                          ),
                        ),
                        new Image.asset("assets/images/more.png",
                            width: 44.0, height: 30.0),
                      ],
                    ),
                  ),
                  new Card(),
                  new Card(),
                  new Card(),
                  new Card(),
                  new Card(),
                  new Card(),
                ],
              ),
            ),
          ],
        ));
  }
}

class Card extends StatefulWidget {
  Card({Key key}) : super(key: key);

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: (MediaQuery.of(context).size.width) * 0.62,
      height: 95.0,
      margin: EdgeInsets.only(right: 10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.0),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(171, 171, 171, 0.2),
                offset: Offset(0.0, 1.0),
                blurRadius: 4.0)
          ]),
      child: new Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: const EdgeInsets.only(right: 3.0),
                        child: new Image.asset('assets/images/test.jpg',
                            width: 20.0, height: 20.0),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Text(
                          "测试测试测试测试测试测试测试测试测试测试",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12.0, color: const Color(0xFF333333)),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Text("测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12.0, color: const Color(0xFFAFAFAF))),
                )
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 10.0),
            child: new Image.asset('assets/images/test.jpg',
                width: 75.0, height: 75.0),
          )
        ],
      ),
    );
  }
}
