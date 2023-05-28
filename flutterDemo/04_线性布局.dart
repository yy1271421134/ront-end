import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// 布局类组件也是组建
// Flutter中的组件根据能否包含子组件分为三类：不包含子组件的组件，包含一个子组件的组件及包含多个子组件的组件
// 线性布局：水平顺序(Row)、垂直顺序(Column)
// 对齐方式属性：主轴(MainAxisAlignment)、横轴(CrossAxisAlignment)

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "线性布局演示",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("线性布局展示")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[PartRow(), PartRow(), PartRow(), PartRow()],
          ),
        ));
  }
}

class PartRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Icon(Icons.arrow_back),
      Icon(Icons.arrow_downward),
      Icon(Icons.arrow_upward),
      Icon(Icons.arrow_forward),
    ]);
  }
}

// 常用属性：
// 1.children:用于存放子组件，是一个列表
// 2.mainAxisSize:主轴方向所占用的屏幕空间。对Row水平空间，对Column垂直空间
// （MainAxisSize.min容纳所有子组件的最小尺寸   MainAxisSize.max尽可能多的占用屏幕空间，即使子组件并没有占满）
//3. textDirection:水平方向上的子组件布局顺序
//4.mainAxisAlignment 子组件在Row或Column主轴中的对其方式 
// MainAxisAlignment.center MainAxisAlignment.start  MainAxisAlignment.end
//注意：该属性经常受 TextDirection的值影响 只有MainAxisalignment.center不会被影响
//此外，当mainAxisSize的值为MainAxisSize.min时，该属性不起作用，因为整个组件已经被子组件占满
//5.verticalDirection:子组件在Column纵轴中的对齐方式，默认值VerticalDirection.down 从上到下 VerticalDirection.up 从下到上
//6.crossAxisAlignment:子组件在Row或Column纵轴中的对齐方式  
//CrossAxisAlignment.center  CrossAxisAlignment.start CrossAxisAlignment.end  
//注意：该属性经常受 VerticalDirection的值影响，只有CrossAxisAlignment.center时不会被影响



