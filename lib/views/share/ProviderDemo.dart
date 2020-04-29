import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

/*
 * Provider 包使用
 */


// User 实体 Bean
class User with ChangeNotifier {
  var name;
  var age;

  User(this.name, this.age);

  void setName(String name) {
    this.name = name;
    notifyListeners();
  }

  String get getName => this.name;
}

class ProviderDemo extends StatefulWidget {
  @override
  _ProviderDemoState createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ProviderDemo"),
        ),
        body: Center(
          child: ChangeNotifierProvider<User>(
            create: (_) => User('Flutter', 0),
            child: PageWidget(),
          ),
        )
    );
  }
}

class PageWidget extends StatefulWidget {
  @override
  _PageWidgetState createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('${Provider.of<User>(context).getName}'),
          TextField(
            onChanged: (changed) => Provider.of<User>(context, listen: false).setName(changed),
            decoration: InputDecoration(hintText: '请输入用户名')
          )
        ],
      ),
    );
  }
}

