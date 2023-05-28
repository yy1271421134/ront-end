import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "网格列表组件",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("网格列表组件")),
            body: GridView(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0),
              children: <Widget>[
                Icon(Icons.add),
                Icon(Icons.arrow_upward),
                Icon(Icons.arrow_forward),
                Icon(Icons.arrow_downward),
                Icon(Icons.arrow_back),
                Icon(Icons.print),
                Icon(Icons.home),
                Icon(Icons.android)
              ],
            )
            //  body: GridView(
            //   gridDelegate:
            //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            //   children: <Widget>[
            //     Icon(Icons.add),
            //     Icon(Icons.arrow_upward),
            //     Icon(Icons.arrow_forward),
            //     Icon(Icons.arrow_downward),
            //     Icon(Icons.arrow_back),
            //     Icon(Icons.print),
            //     Icon(Icons.home),
            //     Icon(Icons.android)
            //   ],
            // )
            ));
  }
}
//本例中crossAxisCount属性值为3，即水平方向上固定摆放3个子组件
// SliverGridDelegateWithFixedCrossAxisCount常用属性
// 1.mainAxisSpacing  在滚动方向上子组件之间的间距
// 2.crossAxisSpacing  相对滚动方向在垂直方向上子组件之间的间距
// 3.childAspectRatio  子组件在水平和垂直方向上尺寸的比例 ，可通过该比值计算子组件在滚动方向上的准确尺寸值

// SliverGridDelegateWithMaxCrossAxisExtent是固定子元素水平方向的最大宽度
// maxCrossAxisExtent 单个元素水平方向上的长度值  
// SliverGridDelegateWithMaxCrossAxisExtent的其他属性和SliverGridDelegateWithFixedCrossAxisCount的属性名和意义相同


// GridView 是一个可以在水平和垂直方向上显示子项的网格列表组件，可根据子项的大小自动调整网格的大小和布局
// 重要属性
// 1.gridDelegate  定义网格的行和列的数量，以及子项之间的间隔和比例。GridView的默认值为SliverGridDelegateWithFixedCrossAxisCount，它定义了一个固定数量的列数。如果需要自定义行和列的数量，可以使用SliverGridDelegateWithMaxCrossAxisExtent或自定义SliverGridDelegate子类。
// 2.children 包含要在网格中显示的子项的列表
// 3.shrinkWrap 如果为true 网格根据内容的大小调整自身的大小，如果为false 则网格将尝试使用其父级的可用空间
// 4.ScrollDirection  定义网格的滚动方向  可以使水平或垂直的
// physics  定义网格的滚动行为,包括滚动到边缘时的反弹效果和滚动速度等

// 和ListView类似GridView也有不同的构造方法
// GridView.builder  同样适用子组件较多的情况，且包含itemBuilder和GridDelegate两个必选属性
// GridView.count 等价于SliverGridDelegateWithFixedCrossAxisCount
// GridView.extent：该方式等价于SliverGridDelegate WithMaxCrossAxisExtent，是对其的一种快捷实现。
// 


