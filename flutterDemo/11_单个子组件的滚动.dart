import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "单个子组件的滚动视图",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("单个子组件的滚动视图")),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: false,
            padding: EdgeInsets.all(5.0),
            primary: true,
            physics: ClampingScrollPhysics(),
            child: Column(children: <Widget>[
              Container(
                color: Colors.blue,
                height: 200.0,
              ),
              Container(
                color: Colors.green,
                height: 200.0,
              ),
              Container(
                color: Colors.red,
                height: 200.0,
              ),
              Container(
                color: Colors.grey,
                height: 200.0,
              ),
            ]),
          ),
        ));
  }
}

// 1.child盛放单个子组件
// 2.ScrollDirection 定义滚动的方向  Axis.vertical 垂直滚动  Axis.horizontal水平滚动
// 3.reverse 滑动方向 true滑动方向与阅读方向相反，反之则相同
// 4.Padding定义整个滚动组件的外边距
// 5.primary 通常是嵌套其他滚动组件时使用，犹豫滑动的操作在嵌套组件之间可能发生冲突，使用该属性指明默认的主滑块
// 6.physics当该组件滑到尽头后继续滑动时的显示效果 ClampingScrollPhysics()和BouncingScrollPhysics()对应Android的发光效果和iOS的弹簧效果。
// 7.controller该属性值为一个ScrollController对象，该对象用于控制和监听滚动事件
