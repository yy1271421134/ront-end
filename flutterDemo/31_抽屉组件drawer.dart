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

// 其效果是从屏幕边缘水平滑动出现，在Scaffold脚手架组件中使用
// drawer有一个ListView组成，第一个元素是DrawerHeader，如在某些聊天软件中显示为个人头像，中间的部分由ListTiles组成，末尾的部分是AboutListTile组件。
// UserAccountsDrawerHeader组件是专门用来显示个人信息的，它封装好了相关的代码。如果想自定义头部显示效果，直接使用DrawerHeader就可以了