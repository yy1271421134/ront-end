import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "弹性布局演示",
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("弹性布局演示")),
            body: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(height: 50.0, color: Colors.blue)),
                Expanded(
                    flex: 3,
                    child: Container(height: 50.0, color: Colors.green))
              ],
            )

//             body:Row(
//   children: <Widget>[
//     Flexible(
//       flex: 1,
//       child: Container(
//         color: Colors.red,
//         height: 50,
//       ),
//     ),
//     Expanded(
//       flex: 2,
//       child: Container(
//         color: Colors.green,
//         height: 50,
//       ),
//     ),
//     Flexible(
//       flex: 1,
//       child: Container(
//         color: Colors.blue,
//         height: 50,
//       ),
//     ),
//   ],
// )

            ));
  }
}
// Flutter中的弹性布局是指使用Flexible和Expanded Widget实现的一种动态布局的方式，让子Widget自适应父容器的空间大小
