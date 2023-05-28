import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "交错动画",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("交错动画")),
          body: StaggeredDemo(),
        ));
  }
}

class StaggeredDemo extends StatefulWidget {
  @override
  _StaggeredDemoState createState() => _StaggeredDemoState();
}

class _StaggeredDemoState extends State<StaggeredDemo>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var i = 0; i < 10; i++) {
      widgets.add(StaggeredAnimation(controller: _controller));
      widgets.add(Container(
        width: 5.0,
      ));
    }
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _controller.reset();
          _controller.forward();
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center, children: widgets));
  }
}

class StaggeredAnimation extends StatelessWidget {
  StaggeredAnimation({required Key key, required this.controller})
      : super(key: key) {
    height = Tween<double>(
      begin: 0.0,
      end: Random().nextInt(500) + 100 * 1.0,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.ease,
    ));
    color = ColorTween(
      begin: Colors.white,
      end: Colors.blue,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.0, 0.8, curve: Curves.ease),
      ),
    );
  }
  final Animation<double> controller;
  Animation<double> height;
  Animation<Color> color;
  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: color.value,
        width: 20.0,
        height: height.value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: controller, builder: _buildAnimation);
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
