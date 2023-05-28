import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "线性列表组件",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("线性列表组件")),
            body: ListView.custom(
              itemExtent: 30.0,
              childrenDelegate:
                  CustomChildrenDelegate((BuildContext context, int index) {
                return Text("当前位置：$index");
              }, childCount: 50),
              cacheExtent: 0.0,
            )));
  }
}

//CustomChildrenDelegate类继承了SliverChildBuilderDelegate类并复写了didFinishLayout方法
class CustomChildrenDelegate extends SliverChildBuilderDelegate {
  CustomChildrenDelegate(
    Widget Function(BuildContext, int) builder, {
    required int childCount,
    bool addAutomaticKeepAlive = true,
    bool addRepaintBoundaries = true,
  }) : super(builder,
            childCount: childCount,
            addAutomaticKeepAlives: addAutomaticKeepAlive,
            addRepaintBoundaries: addRepaintBoundaries);
  @override
  //绘制完组件布局时被调用
  void didFinishLayout(int firstIndex, int lastIndex) {
    super.didFinishLayout(firstIndex, lastIndex);
    debugPrint("Finish! start at $firstIndex,ent at $lastIndex");
  }
}
