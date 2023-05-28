import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "手势识别",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("手势识别")),
            // --------点击---------
            // body: GestureDetector(
            //   child: Container(
            //       width: double.infinity,
            //       height: double.infinity,
            //       color: Colors.green),
            //   onTap: () => debugPrint("单机"),
            //   onDoubleTap: () => debugPrint("双击 "),
            //   onLongPress: () => debugPrint("长按  "),
            // )

            // ------滑动-------
            // body: GestureDetector(
            //   child: Container(
            //       width: double.infinity,
            //       height: double.infinity,
            //       color: Colors.green),
            //   onPanDown: (details) =>
            //       debugPrint("滑动按下：${details.globalPosition}"),
            //   onPanUpdate: (details) => debugPrint(
            //       "滑动中，当前位置 ：${details.delta.dx}-${details.delta.dy}"),
            //   onPanEnd: (details) =>
            //       debugPrint("滑动结束：${details.velocity.pixelsPerSecond}"),
            // )

            // ---------水平垂直滑动---------
// 垂直滑动而言，将Horizontal改为Vertical
            body: GestureDetector(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green),
              // 水平滑动
              onHorizontalDragDown: (details) =>
                  debugPrint("水平滑动按下：${details.globalPosition}"),
              onHorizontalDragUpdate: (details) => debugPrint(
                  "水平滑动中：当前位置 ${details.delta.dx} -${details.delta.dy}"),
              onHorizontalDragEnd: (details) =>
                  debugPrint("水平滑动结束，瞬时速度：${details.velocity.pixelsPerSecond}"),
            )

            // 双指缩放常见于查看图片，网页，文档等使用场景
            //  body: GestureDetector(
            //   child: Container(
            //       child: Icon(Icons.android),color: Colors.green),
            //       // 缩放
            //         onScaleStart: (details) =>
            //       debugPrint("缩放开始：${details.toString()}"),
            //         onScaleUpdate: (details) =>
            //       debugPrint("缩放中：${details.scale}"),
            //         onScaleEnd: (details) =>
            //       debugPrint("缩放结束：${details.toString()}"),
            // )
            ));
  }
}

//在onPanDown和onTab共存时，可能只有onPanDown事件得到响应