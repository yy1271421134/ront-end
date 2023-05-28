// Padding是一个常用的容器类Widget，给子Widget设置内边距
// 属性值：
// 1.EdgeInsets.all(double value)设置四个方向的内边距都为value
// 2.EdgeInsets.only({double left, double top, double right, double bottom})设置指定方向的内边距
// 3.EdgeInsets.symmetric({double vertical, double horizontal})：设置垂直和水平方向的内边距。 symmetric(对称的)
// 4.EdgeInsets.fromLTRB(double left, double top, double right, double bottom)：分别设置左、上、右、下四个方向的内边距。
// 5.EdgeInsets.zero：四个方向的内边距都为0。
Padding(
  padding: EdgeInsets.all(20.0),
  child: Text(
    'Hello, world!',
    style: TextStyle(fontSize: 30.0),
  ),
)


//ConstrainedBox对子组件施加额外的约束条件，来控制子组件的尺寸
// 常用属性：constraints是一个BoxConstraints对象，用于指定子组件的约束条件  child是一个子组件即需要被约束的组件
// BoxConstraints是一个用于约束Box的对象,包含最小宽度  最大宽度  最小高度 最大高度等属性
//当ConstrainedBox的子组件的尺寸超出了父组件的约束条件，ConstrainedBox会将子组件的尺寸缩小到复合约束条件的范围内
// 如果子组件的尺寸小于父组件的最小宽度或最小高度，那么ConstrainedBox会将子组件的尺寸扩大到最小宽度或最小高度。
ConstrainedBox(
  constraints: BoxConstraints(
    minWidth: 100,
    minHeight: 100,
    maxWidth: 200,
    maxHeight: 200,
  ),
  child: Container(
    color: Colors.red,
    width: 150,
    height: 150,
  ),
)

//装饰DecoratedBox 是一个可以装饰子Widget的容器类Widget，为子Widget添加背景色、边框、圆角、阴影等装饰效果
// 常用属性
//1.decoration  属性是一个BoxDecoration对象（Boxdecoration是一个用于装饰Box的对象），用于指定装饰效果
// decoration属性值包括
//1.BoxDecoration.color 指定背景色
//2.BoxDecoration.border 指定背边框样式
//3.BoxDecoration.borderRadius 指定圆角半径
//4.BoxDecoration.boxShadow 指定阴影效果
//5.BoxDecoration.gradient 指定渐变效果
//注：如果同时指定了背景色和渐变，那么背景会覆盖渐变
//其中，decoration属性是必须要指定的，是一个BoxDecoration对象
//2.child 属性是一个子Widget即需要被装饰的组件
// 3.position 指定背景图或渐变的位置，它是一个DecorationPosition枚举类型，常见的取值包括：
// 1.DecorationPosition.background 将背景或渐变放置在子widget的后面
// 1.DecorationPosition.foreground  将背景或渐变放置在子Widget的前面
DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.red,
    border: Border.all(width: 2.0, color: Colors.blue),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(color: Colors.black, offset: Offset(2.0, 2.0)),
    ],
  ),
  child: Text(
    'Hello, world!',
    style: TextStyle(fontSize: 30.0),
  ),
)
// BoxDecoration：BoxDecoration是一个用于装饰Box的对象，它包含了背景色、边框、圆角、阴影等属性。常见的属性包括：
// color：用于指定背景色。
// border：用于指定边框样式。
// borderRadius：用于指定圆角半径。
// boxShadow：用于指定阴影效果。
// gradient：用于指定渐变效果。
// image：用于指定背景图片。
// FlutterLogoDecoration：FlutterLogoDecoration是一种BoxDecoration，用于绘制Flutter Logo。常见的属性包括：
// lightColor：用于指定浅色Logo的颜色。
// darkColor：用于指定深色Logo的颜色。
// textColor：用于指定文字的颜色。
// style：用于指定Logo的样式，可以是水平、垂直或标志。
// ShapeDecoration：ShapeDecoration是一种BoxDecoration，用于绘制各种形状的装饰效果。常见的属性包括：
// color：用于指定背景色。
// gradient：用于指定渐变效果。
// shape：用于指定形状，可以是矩形、圆形、椭圆形等。
// shadows：用于指定阴影效果。
// UnderlineTabIndicator：UnderlineTabIndicator是TabBar的一种指示器，用于指示当前选中的Tab。常见的属性包括：
// borderSide：用于指定指示线的样式。
// insets：用于指定指示线与Tab之间的间距。
// 以上是Flutter中常用的几种装饰类，它们可以帮助我们为Widget添加各种装饰效果，提高UI的美观度。如果我们需要为Widget添加装饰效果，那么可以选择合适的装饰类来实现。

