import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool showLeading;
  final bool centerTitle;
  final List<Widget> actions;
  final double elevation;
  final Color backgroundColor;
  final Widget leading;
  final double titleSpacing;

  // final PreferredSizeWidget bottom;

  MyAppBar({
    this.title = const Text(''),
    this.showLeading = false,
    this.centerTitle = false,
    this.leading,
    this.elevation = 1,
    this.actions = const [],
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    // this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      leading: showLeading ? leading : null,
      centerTitle: centerTitle,
      automaticallyImplyLeading: showLeading,
      actions: actions,
      elevation: elevation,
      titleSpacing: titleSpacing,
      // bottom: widget.bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size(double.minPositive, 88.0);
}

Widget commentAppBar(
    BuildContext context,
    String title, {
      Widget action,
      double elevation = 1.0,
      bool showPop = true,
      double spacing = 10,
    }) {
  assert(title != null);
  return MyAppBar(
    showLeading: false,
    title: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
    elevation: elevation,
    titleSpacing: spacing,
    actions: <Widget>[
      if (action != null)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: action,
        ),
    ],
  );
}