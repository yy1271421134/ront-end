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

// PopupMenuButton 弹出式菜单组件，通常用于APPBar中，触发溢出菜单的显示
// 常用属性
// itembuilder 用户点击时创建菜单
// child 单个菜单项中的子组件
// onSelected  用户点击菜单中的某一个元素后运行
// onCanceled PopupMenuButton关闭时运行（注：仅在用户没有选择菜单中的某一项时，该回调才会被执行）

