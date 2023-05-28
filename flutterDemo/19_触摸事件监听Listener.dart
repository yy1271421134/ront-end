import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "触摸事件监听",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("触摸事件监听")),
            body: Listener(
              child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green),
              onPointerDown: (event) => debugPrint("按下  $event"),
              onPointerUp: (event) => debugPrint("抬起 $event"),
              onPointerMove: (event) => debugPrint("移动  $event"),
            )));
  }
}

//Listener组件只允许一个子组件存在 ，且包含了onPointerDown,onPointerUp等属性
// event不单单包含坐标信息，还包含压力程度(pressure)移动方向(orientation),若不想让某个组件响应触摸事件，
// 则可使用AbsorbPointer组件或IgnorePointer组件包裹相应的组件

//Listener组件的behavior属性，用于指定手势事件的处理方式，behavior的取值有
// 1.HitTestBehavior.deferToChild  当手势事件发生时，先将事件传递给子组件进行处理，如果子不处理则传递给父
// 2.HitTestBehavior.opaque  当手势事件发生时，直接传递给当前组件并阻止传递给下一层，常用于不透明的组件如Container，Image
// HitTestBehavior.deferToDescendants当手势事件发生时，将事件传递给当前组件，并允许事件传递给下一层，常用于半透明组件如card Dialog
// HitTestBehavior.deferToDescendants：当手势事件发生时，先将事件传递给子组件进行处理，如果子组件不处理事件，则将事件传递给子组件的子组件进行处理，直到找到一个处理事件的组件为止。这种方式通常用于需要嵌套多个组件的情况，例如ListView、GridView等。