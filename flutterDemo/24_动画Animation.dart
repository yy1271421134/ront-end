
// Flutter中的动画Animation是一种用于创建平滑，流畅的动态效果的工具
// 动画是基于三个核心概念构建的Animation Tween  AnimationController
// Animation 动画当前的状态，动画的当前值，方向等
// Tween 动画的值域，动画的起始值，结束值
// AnimationController 控制动画的播放速度方向等

// 动画的实现步骤
// 1.创建一个AnimationController对象，设置动画的时长和初始值
final controller=AnimationController(
  duration:Duration(seconds: 1),
  value:0
)
// 2.创建一个Tween对象，并设置动画的起始值和结束值
final tween=Tween<double>(begin:0,end:1);
// 3.将Tween对象传递给AnimationController对象，并创建一个Animation对象
final animaiton=tween.animate(controller);
// 4.在动画开始之前，调用AnimationController的forward方法，启动动画
controller.forward();
// 5.在构建UI时，你可以使用AnimationBuilder或AnimatedWidget来将动画值应用到UI元素。
return Center(
  child: AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      return Transform.rotate(
        angle: animation.value * 2 * pi,
        child: child,
      );
    },
    child: Icon(Icons.arrow_forward),
  ),
);
// 在这个示例中，我们创建了一个AnimationController对象，并使用Tween对象创建了一个Animation对象。我们还将Animation对象传递给AnimatedBuilder组件，并在其builder回调中将动画值应用到Transform.rotate组件中，从而实现了一个旋转动画。

// 学习Flutter动画的重点包括：

// 熟悉Animation、Tween和AnimationController的概念和用法。
// 学习常用的动画类型，如淡入淡出、缩放、旋转等。
// 学习如何使用AnimatedBuilder、AnimatedContainer、AnimatedOpacity等内置组件来实现动画效果。
// 学习如何使用Curve和Interval来自定义动画的速度和方向。
// 学习如何使用AnimationStatus来监听动画的状态变化。
// 学习如何使用AnimationController的reverse、reset、stop等方法来控制动画的播放。
// 总之，Flutter中的动画是创建平滑、流畅的动态效果的重要工具。通过熟练掌握动画的基本概念和常用方法，你可以为你的应用程序添加生动、有趣的动画效果。