import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/views/share.dart';
import 'home.dart';

class MainWrapper extends StatefulWidget {
  MainWrapper({Key key}) : super(key: key);

  @override
  _MainWrapper createState() => _MainWrapper();
}

class _MainWrapper extends State<MainWrapper> {
  PageController _pageController;
  List<Widget> pages;

  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
    pages = [SharePage(), HomePage(), HomePage()];
  }

  void onTap(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: this.onPageChanged,
        physics: new NeverScrollableScrollPhysics(), //禁止滑动
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFFff4057),
        unselectedItemColor: const Color(0xFFbfbfbf),
        items: [
          BottomNavigationBarItem(
            title: Text("首页", style: TextStyle(fontSize: 12)),
            icon: Image.asset(
              "assets/images/tab/home.png",
              width: 26.0,
              height: 26.0,
            ),
            activeIcon: Image.asset(
              "assets/images/tab/homeCur.png",
              width: 26.0,
              height: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("0元购", style: TextStyle(fontSize: 12)),
            icon: Image.asset(
              "assets/images/tab/application.png",
              width: 26.0,
              height: 26.0,
            ),
            activeIcon: Image.asset(
              "assets/images/tab/applicationCur.png",
              width: 26.0,
              height: 26.0,
            ),
          ),
          BottomNavigationBarItem(
            title: Text("我的", style: TextStyle(fontSize: 12)),
            icon: Image.asset(
              "assets/images/tab/profile.png",
              width: 26.0,
              height: 26.0,
            ),
            activeIcon: Image.asset(
              "assets/images/tab/profileCur.png",
              width: 26.0,
              height: 26.0,
            ),
          )
        ],
        onTap: this.onTap,
      ),
    );
  }
}
