import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter_shop/widget/swiper_pagination.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  static const List<Map> banner = <Map>[
    {
      "Img": "assets/images/banner1.png",
      "Name": "",
      "Url": "https://qiyigou.koalafield.com/Wechat/Detail/13119"
    },
    {
      "Img": "assets/images/banner2.png",
      "Name": "",
      "Url": "http://t.koalafield.com/?KbMadF8QyEexJExjMVdnmQ"
    },
    {
      "Img": "assets/images/banner3.png",
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
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

//  Provider a= Provider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFecf0f1),
        body: Column(
          children: <Widget>[
            Container(
                height: 183.0,
                child: new Swiper(
                  itemBuilder: (ctx, index) => Image.asset(
                    HomePage.banner[index]["Img"],
                  ),
                  itemCount: HomePage.banner.length,
                  pagination: new SwiperPagination(
                    margin: const EdgeInsets.all(15.0),
                    builder: MySwiperPaginationBuilder(
                      size: Size(8.0, 3.0),
                      activeSize: Size(12.0, 3.0),
                      radius: 3.0,
                      color: Color.fromRGBO(255, 255, 255, 0.2),
                      activeColor: const Color(0XFFFFFFFF),
                    ),
                  ),
                )),
            Container(
              width: double.infinity,
              height: 170.00,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              transform: Matrix4.translationValues(0.0, -10.0, 0.0),
              child: new Swiper(
                outer: false,
                loop: false,
                itemCount: 2,
                pagination: new SwiperPagination(
                  margin: const EdgeInsets.all(4.0),
                  builder: MySwiperPaginationBuilder(
                    size: Size(5.0, 5.0),
                    activeSize: Size(10.0, 5.0),
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    activeColor: const Color(0XFFe93b3d),
                  ),
                ),
                itemBuilder: (c, i) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: new Wrap(
                      runSpacing: 15.0,
                      children: HomePage.category.map((item) {
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
                                    color: const Color(0xFF666666),
                                  ),
                                ),
                              ],
                            ));
                      }).toList(),
                    ),
                  );
                },
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
            ActivityPanelTitle(),
          ],
        )
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd(){
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
              blurRadius: 4.0,
            )
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
                        child: new Image.asset(
                          'assets/images/test.jpg',
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: new Text(
                          "测试测试测试测试测试测试测试测试测试测试",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFF333333),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: new Text(
                    "测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 10.0),
            child: new Image.asset(
              'assets/images/test.jpg',
              width: 75.0,
              height: 75.0,
            ),
          )
        ],
      ),
    );
  }
}

class ActivityPanelTitle extends StatefulWidget {
  final String word1;
  final String word2;
  final String word3;

  ActivityPanelTitle({Key key, this.word1, this.word2, this.word3})
      : super(key: key);

  @override
  _ActivityPanelTitle createState() => _ActivityPanelTitle();
}

class _ActivityPanelTitle extends State<ActivityPanelTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "购",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF333333),
                    ),
                  ),
                  Container(
                    width: 3.0,
                    height: 3.0,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF333333),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  Text(
                    "特色",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF39aaa8),
                    ),
                  ),
                ],
              ),
              Text(
                "F E A T U R E D",
                style: TextStyle(
                  fontSize: 10.0,
                  color: const Color(0xFF39aaa8),
                ),
              )
            ],
          ),
          Positioned(
            right: 0.0,
            child: Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Text(
                        "更多",
                        style: TextStyle(
                          color: Color(0xFFAFAFAF),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Transform.translate(
                        offset: Offset(0.0, -1.5),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          transform: Matrix4.rotationZ(pi / 4),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 1.0,
                                color: Color(0xFFAFAFAF),
                              ),
                              right: BorderSide(
                                width: 1.0,
                                color: Color(0xFFAFAFAF),
                              ),
                            ),
                          ),
                        ))
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class ActivityPanel extends StatefulWidget {
  ActivityPanel({Key key}) : super(key: key);

  @override
  _ActivityPanel createState() => _ActivityPanel();
}

class _ActivityPanel extends State<ActivityPanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[],
    );
  }
}
