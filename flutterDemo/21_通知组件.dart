import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "通知组件",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("通知组件")),
            body: NotificationListener(
                onNotification: (notification) {
                  switch (notification.runtimeType) {
                    case ScrollStartNotification:
                      debugPrint("滚动开始");
                      break;
                    case ScrollUpdateNotification:
                      debugPrint("滚动停止");
                      break;
                    case OverscrollNotification:
                      debugPrint("滚动到边界");
                      break;
                  }
                  return false; //
                },
                child: ListView.builder(
                  itemCount: 50,
                  itemExtent: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Text("当前位置： $index");
                  },
                ))));
  }
}
