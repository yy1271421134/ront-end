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
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu));
                },
              ),
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
              title: Text("顶部程序栏组件")),
        ));
  }
}
