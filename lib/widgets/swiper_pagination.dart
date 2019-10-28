import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MySwiperPaginationBuilder extends SwiperPlugin {
  ///color when current index,if set null , will be Theme.of(context).primaryColor
  final Color activeColor;

  ///,if set null , will be Theme.of(context).scaffoldBackgroundColor
  final Color color;

  ///Size of the rect when activate
  final Size activeSize;

  ///Size of the rect
  final Size size;

  /// Space between rects
  final double space;

  final Key key;

  ///Size of the rect
  final double radius;

  const MySwiperPaginationBuilder(
      {this.activeColor,
        this.color,
        this.key,
        this.radius: 5.0,
        this.size: const Size(10.0, 5.0),
        this.activeSize: const Size(10.0, 5.0),
        this.space: 3.0});

  @override
  Widget build(BuildContext context, SwiperPluginConfig config) {
    ThemeData themeData = Theme.of(context);
    Color activeColor = this.activeColor ?? themeData.primaryColor;
    Color color = this.color ?? themeData.scaffoldBackgroundColor;

    List<Widget> list = [];

    if (config.itemCount > 20) {
      print(
          "The itemCount is too big, we suggest use FractionPaginationBuilder instead of DotSwiperPaginationBuilder in this sitituation");
    }

    int itemCount = config.itemCount;
    int activeIndex = config.activeIndex;

    for (int i = 0; i < itemCount; ++i) {
      bool active = i == activeIndex;
      Size size = active ? this.activeSize : this.size;
      list.add(Container(
        decoration: BoxDecoration(
          color: active ? activeColor : color,
          borderRadius: BorderRadius.circular(this.radius),
        ),
        width: size.width,
        height: size.height,
        key: Key("pagination_$i"),
        margin: EdgeInsets.all(this.space),
      ));
    }

    if (config.scrollDirection == Axis.vertical) {
      return new Column(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: list,
      );
    } else {
      return new Row(
        key: key,
        mainAxisSize: MainAxisSize.min,
        children: list,
      );
    }
  }
}
