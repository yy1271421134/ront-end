import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "线性列表组件",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("线性列表组件")),
          body: ListView.separated(
            itemCount: 50,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: Colors.black);
            },
            itemBuilder: (BuildContext context, int index) {
              return Text("当前位置： $index");
            },
          ),

          // body: ListView.builder(
          //     itemCount: 50,
          //     itemExtent: 30,
          //     itemBuilder: (BuildContext context, int index) {
          //       return Text("当前位置：$index");
          //     }),

          //    body: ListView(
          //   scrollDirection: Axis.vertical,
          //   reverse: false,
          //   padding: EdgeInsets.all(5.0),
          //   primary: true,
          //   physics: ClampingScrollPhysics(),
          //   children: <Widget>[
          //     Container(
          //       color: Colors.blue,
          //       height: 200.0,
          //     ),
          //     Container(
          //       color: Colors.green,
          //       height: 200.0,
          //     ),
          //     Container(
          //       color: Colors.red,
          //       height: 200.0,
          //     ),
          //     Container(
          //       color: Colors.grey,
          //       height: 200.0,
          //     ),
          //   ],
          // ),
        ));
  }
}


//ListView提供了多种构造函数，可根据需求创建不同类型的ListView
// ListView.builder 根据数据源动态构建列表项
// ListView.separated 在列表项之间添加分割线
// ListView.custom 自定义列表项和滚动方式

// 注意：
// 数据源 ListView需要为其提供数据源，可以是本地数据或远程数据，在使用ListView.builder时需实现itemBuilder回调函数以根据数据源动态构建列表项
// 列表项：ListView需要为每个数据项创建列表项，在使用ListView.builder时，需实现itemBuilder回调函数
// 滚动控制：ListView支持垂直滚动，可以通过设置scrollDirection属性为Axis.vertical来实现。同时，ListView还提供了多种滚动控制的方法，例如controller、scrollToIndex等。
// 性能优化：ListView在展示大量数据时可能会出现性能问题，需进行优化
// 1.使用ListView.builder动态构建列表项，避免一次创建过多的Widget
// 2.使用ListView.separated在列表项之间添加分割线
// 3.使用ListView的cacheExtent属性设置缓存区域大小，减少滚动时重新构建列表项的次数
// 对于可复用的Widget,可使用ListView的itemExtent属性设置固定高度，避免动态计算高度的开销

// 1.child盛放单个子组件
// 2.ScrollDirection 定义滚动的方向  Axis.vertical 垂直滚动  Axis.horizontal水平滚动
// 3.reverse 滑动方向 true滑动方向与阅读方向相反，反之则相同
// 4.Padding定义整个滚动组件的外边距
// 5.primary 通常是嵌套其他滚动组件时使用，犹豫滑动的操作在嵌套组件之间可能发生冲突，使用该属性指明默认的主滑块
// 6.physics当该组件滑到尽头后继续滑动时的显示效果 ClampingScrollPhysics()和BouncingScrollPhysics()对应Android的发光效果和iOS的弹簧效果。
// 7.controller该属性值为一个ScrollController对象，该对象用于控制和监听滚动事件

// itemCount指定列表项的数量
// itemBuilder根据数据源动态构建列表项的回调函数
// itemExtent指定列表项的固定高度或宽度，优化滚动性能
// shrinkWrap是否根据子组件的高度或宽度自动调整滚动范围（控制整个ListView的长度）
// separatorBuilder 在列表项之间添加分割线的回调函数
// OnRefresh处理下拉刷新事件的回调函数
// onLoadMore 处理上拉加载更多事件的回调函数
// cacheExtent设置缓存区域大小，减少滚动时重新构建列表项的次数
