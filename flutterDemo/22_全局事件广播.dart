import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'dart:math';

EventBus eventBus;
var themeColor;
final List<Color> themeColorList = [
  Colors.red,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.cyan,
  Colors.blue,
  Colors.purple
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RainbowTheme();
  }
}

class RainbowTheme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RainboxThemeState();
  }
}

class RainboxThemeState extends State<RainbowTheme> {
  @override
  void initState() {
    super.initState();
    eventBus = EventBus();
    themeColor = themeColorList[0];
    eventBus
        .on<ChangeThemeEvent>()
        .listen((ChangeThemeEvent onData) => setState(() {
              themeColor = themeColorList[onData.themeIndex];
            }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "全局事件总线",
        theme: ThemeData(
          primarySwatch: themeColor,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("全局事件总线"),
            ),
            body: RaisedButton(
                onPressed: () => eventBus.fire(ChangeThemeEvent(Random()
                    .nextInt(7))), //eventBus.fire(event)发送一个事件的方法，这里采用了随机下标值
                child: Text("点击更换主题颜色"))));
  }
}

// 定义Event类  自定义事件类
class ChangeThemeEvent {
  // 用来保存主题颜色的下标，对应themeColorList常量列表
  var themeIndex;
  ChangeThemeEvent(this.themeIndex);
}

// FLutter中的全局事件广播是一种将事件从一个组件传递到另一个组件的机制，允许在整个FLutter应用程序中广播和接收事件，
// 而不需知道事件的发送者和接受者之间的层次关系，常用于在不同组件之间传递数据或通知其他组件发生的事件
//  使用全局事件广播的基本步骤
// 1.创建一个事件总线
// final eventBus = EventBus();
// 2.注册一个事件监听器
// eventBus.on<myEvent>().listen((event){

// })
// 3.发布一个事件
// eventBus.fire(MyEvent(data));
//  在上面的代码中MyEvent是一个自定义事件类，包含相关的数据，所有注册了对应事件类型的监听器都会收到这个事件，并可以处理它
