import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter GridView Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter GridView Demo'),
          ),
          body: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 3.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                        child: Icon(IconData(0xe145 + index,
                            fontFamily: "MaterialIcons")),
                      );
                    },
                    childCount: 12,
                  ),
                ),
              ),
              SliverFixedExtentList(
                itemExtent: 30.0,
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Text("当前位置： $index");
                }, childCount: 50),
              )
            ],
          ),
        ));
  }
}
// slivers  指定子控件，可以是一个SliverList、SliverGrid
//注：放到这里的子组件并非所有类型皆可，它们必须是属于Sliver家族的。

