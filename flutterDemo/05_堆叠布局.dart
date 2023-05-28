import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "堆叠布局演示",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("堆叠布局演示")),
            body: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.expand,
              children: <Widget>[
                //绿色的边框
                Container(child: null, color: Colors.green),
                //白色的背景
                Positioned(
                    child: Container(child: null, color: Colors.white),
                    top: 10.0,
                    left: 10.0,
                    bottom: 10.0,
                    right: 10.0),
                //水平和垂直都居中的图标
                Positioned(child: Icon(Icons.home)),
                //水平居中的文本组件
                Positioned(child: Text("我在顶部"), top: 0.0),
                //垂直居中的文本组件
                Positioned(child: Text("我在左侧"), left: 0.0),
                //距页面底部有一定距离的文本组件
                Positioned(child: Text('我在底部'), bottom: 20.0),
                //距页面右侧有一定距离的文本组件
                Positioned(child: Text("我在右侧"), right: 20.0)
              ],
            )));
  }
}

//1.Stack组件代表着这是一个堆叠布局 ，Position详细描述每个子组件的定位信息
// 2.Positioned 允许放置单个子组件 其中left top bottom right 用于描述距四周的边距
// 3.width height描述子组件的宽度和高度
//注：left width right 三个属性只能使用其中的两个不可同时使用，剩余的属性会根据另外两个设置的自动计算出来
//top  height bottom同理
// 4.Children包含堆叠布局组件中的所有子组件
// 5.TextDirection 水平方向上的子组件布局顺序
//6.Alignment 子组件的对齐方式 ，start  end  center 但仅对没有使用Position包裹的子组件或使用Position包裹但没有充足定位信息的子组件起作用
// 注：瘦textDirection影响，只有Alignment.center时才不会、受此影响
//7.Fit 决定没有定位的子组件在整个Stack组件中的尺寸  StackFit.loose使用子组件的大小  StackFit.expand填充整个Stack
//8.overflow 在Stack子组件超出Stack显示区域时的处理方式  overflow.visible超出的部分依然显示  overflow.clip超出的部分会被剪裁掉
