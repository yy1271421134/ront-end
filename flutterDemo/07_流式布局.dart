import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "流式布局演示",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("流式布局演示")),
          // body: Row(
          //   children: <Widget>[
          //     Container(height: 50.0, width: 150.0, color: Colors.green),
          //     Container(height: 50.0, width: 150.0, color: Colors.lightGreen),
          //     Container(height: 50.0, width: 150.0, color: Colors.lime),//右侧溢出，日志输出错误信息
          //   ],
          // )
          body: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: <Widget>[
              Container(height: 50.0, width: 150.0, color: Colors.green),
              Container(height: 50.0, width: 150.0, color: Colors.lightGreen),
              Container(height: 50.0, width: 150.0, color: Colors.lime),
            ],
          ),

//
        ));
  }
}
// Flutter中的流式布局可以让子Widget自动换行，并可以设置子Widget组件的间距、对齐方式等
// 常用属性：
// 1.direction 流式布局的方向 水平方向(Axis.horizontal)  垂直方向(Axis.vertical)
// 2.alignment 子Widget的对齐方式 start  end center spaceBetween
// 3.spacing 子Widget之间的水平间距
// 4.runSpacing  子Widget之间的水平间距
// 5.CrossAxisAlignment 子Widget在横轴上的对齐方式  start end center stretch
// 6.textDirection 表示文本方向 ltr从左到右  rtl从右到左 
