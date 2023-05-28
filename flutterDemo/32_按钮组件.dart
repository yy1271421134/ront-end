import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "顶部程序栏组件",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
                // APPBar左上角
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu));
                  },
                ),
                // APPBar中的菜单
                actions: <Widget>[
                  IconButton(
                      onPressed: () {
                        debugPrint("save");
                      },
                      icon: Icon(Icons.save)),
                  IconButton(
                      onPressed: () {
                        debugPrint("share");
                      },
                      icon: Icon(Icons.share)),
                  // 不常用菜单
                  PopupMenuButton(
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                        child: Text("帮助"),
                        value: "help",
                      ),
                      PopupMenuItem<String>(
                        child: Text("关于"),
                        value: "about",
                      ),
                    ],
                    onSelected: (String action) {
                      switch (action) {
                        case "help":
                          debugPrint("help");
                          break;
                        case "about":
                          debugPrint("about");
                          break;
                      }
                    },
                  )
                ],
                // APPBar标题文字
                title: Text("顶部程序栏组件")),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                      accountName: Text("李三水"),
                      accountEmail: Text("787825857@qq.com"),
                      currentAccountPicture: Icon(Icons.person)),
                  ListTile(
                    leading: new CircleAvatar(child: new Text("A")),
                    title: new Text("Alice"),
                    subtitle: new Text("click to start talk"),
                    onTap: () => {debugPrint("alice")},
                  ),
                  ListTile(
                    leading: new CircleAvatar(child: new Text("B")),
                    title: new Text("Bob"),
                    subtitle: new Text("click to start talk"),
                    onTap: () => {debugPrint("Bob")},
                  ),
                  ListTile(
                    leading: new CircleAvatar(child: new Text("C")),
                    title: new Text("Cindy"),
                    subtitle: new Text("click to start talk"),
                    onTap: () => {debugPrint("Cindy")},
                  ),
                  AboutListTile(
                    child: Text("About this App"),
                    icon: Icon(Icons.info),
                  )
                ],
              ),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ))));
  }
}

// 1.浮动悬停按钮组件
// 基本属性
// onPressed 当用户点击按钮时回调
// child 按钮中的子组件，一般是文本组件用来显示按钮上的文字
// textColor 按钮中文本的颜色
// color 按钮本身的颜色
// disabledColor 按钮被禁用时的颜色 
// disabledTextColor 按钮被禁用时文字的颜色
// splashColor：当按钮被点击时，水波纹特效的颜色。
// highlightColor：长按按钮后，按钮的颜色。
// elevation：按钮下方的阴影范围，通常用来表示按钮的高度
RaisedButton(AboutDialogonPressed:(){
  debugPrint("最简单的RaisedButton");
},
child:Text("最简单的Raisedbutton"))
// 上述代码实现了一个默认样式的RaisedButton，并实现了在用户点击按钮后输出调试日志的功能

// 2.扁平化按钮 FlatButton
// onPressed：点击按钮时触发的函数
// child：按钮中显示的文本或图标
// textColor：按钮文本的颜色
// disabledTextColor：按钮禁用时的文本颜色
// splashColor：点击按钮时的水波纹颜色

// 3.IconButton（图标按钮）
// onPressed：点击按钮时触发的函数
// icon：按钮中显示的图标
// iconSize：按钮中图标的大小
// color：按钮图标的颜色
// disabledColor：按钮禁用时图标的颜色
// splashColor：点击按钮时的水波纹颜色

// 4.FloatingActionButton（浮动动作按钮）
// onPressed：点击按钮时触发的函数
// child：按钮中显示的图标
// backgroundColor：按钮的背景颜色
// foregroundColor：按钮图标的颜色
// heroTag：用于标识该按钮的字符串
// elevation：按钮的阴影高度
// shape：按钮的形状

// 5.OutlineButton（带边框的按钮）
// onPressed：点击按钮时触发的函数
// child：按钮中显示的文本或图标
// textColor：按钮文本的颜色
// disabledTextColor：按钮禁用时的文本颜色
// splashColor：点击按钮时的水波纹颜色
// borderSide：按钮边框的样式