import 'package:flutter/material.dart';

//主函数（入口函数），下面我会简单说说Dart的函数
void main() => runApp(MyApp());

// 声明MyApp类
class MyApp extends StatelessWidget {
  //重写build方法
  @override
  Widget build(BuildContext context) {
    //返回一个Material风格的组件
    return MaterialApp(
      title: 'Welcome to Flutteraa',
      home: Scaffold(
        //创建一个Bar，并添加文本
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        // 在主体的中间区域，添加一个hello world 的文本
        body: Center(
            child: (Text("文本组件" * 10,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 7.0,
                    background: Paint()..color = Colors.blue,
                    decoration: TextDecoration.underline)))

            //使用自定义组件
            // child: GradientButton(
            //     colors: [Colors.black12, Colors.black38],
            //     height: 50.0,
            //     child: Text("按钮一"))
            // child:Text('Hello World'),
            ),
      ),
    );
  }
}
