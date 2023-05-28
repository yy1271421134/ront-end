import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "组件树共享数据",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("组件共享数据")),
        body: ShareDataWidget(
            color: Colors.blue,
            child: Center(
              child: Column(children: <Widget>[
                IconList(Icons.arrow_upward),
                IconList(Icons.arrow_forward),
                IconList(Icons.arrow_downward),
                IconList(Icons.arrow_back)
              ]),
            )),
      ),
    );
  }
}

//图标列表
class IconList extends StatefulWidget {
  final IconData icon;
  IconList(this.icon);
  @override
  State<StatefulWidget> createState() {
    return IconListState(icon);
  }
}

// 图标列表
class IconListState extends State<IconList> {
  var icon;
  IconListState(this.icon);
  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: ShareDataWidget.of(context)!.color);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}

class ShareDataWidget extends InheritedWidget {
  final Color color;
  ShareDataWidget({required this.color, required Widget child})
      : super(child: child);
  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: ShareDataWidget);
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.color != color;
  }
}
