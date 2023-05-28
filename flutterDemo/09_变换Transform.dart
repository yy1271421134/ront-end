// Transform是一个对子Widget进行变换的组件，平移 旋转 缩放
// 常用属性：
// 1.transform 指定变换矩阵，通过Matrix4对象指定变换矩阵
// 2.origin 指定变换的原点
// 3.alignment 指定子Widget在Transform中的对齐方式
// child 需要被变换的子Widget
Transform(
  transform:Matrix4.rotationZ(0.2),
  origin:Offset(20,20)
  alignment:Alignment.topRight,
  child:Container(
    width:100,
    height:100,
    color:Colors.red,
  )
)
//这个例子中使用Transform对一个红色容器进行了旋转变换，设置了旋转角度为0.2弧度，变换原点为(20,20)，对齐方式为右上角
// 在Flutter中，Transform组件可以用来实现各种变换效果，如平移、旋转、缩放等。而Transform组件的变换效果是通过Matrix4类来实现的。Matrix4是一个4x4的矩阵，它可以表示3D空间中的变换操作，包括平移、旋转、缩放、投影等。

// Matrix4类中常用的方法包括：

// translate方法：用于对矩阵进行平移操作，参数为三维向量，表示在x、y、z方向上的平移距离。

// rotate方法：用于对矩阵进行旋转操作，参数为旋转轴和旋转角度，旋转轴可以是x、y、z轴中的任意一个。

// scale方法：用于对矩阵进行缩放操作，参数为三维向量，表示在x、y、z方向上的缩放比例。

// perspective方法：用于对矩阵进行投影操作，参数为透视角度和纵横比。

// 除了上述方法之外，Matrix4类还提供了一些其他的方法，如invert、transpose、det等，用于对矩阵进行求逆、转置、行列式等操作。这些方法在实现一些高级变换效果时会比较有用。

// 在使用Transform组件时，我们可以通过创建Matrix4对象并调用它的各种方法来实现不同的变换效果。例如，可以使用translate方法来实现平移效果，使用rotate方法来实现旋转效果，使用scale方法来实现缩放效果，等等。

// 总之，Matrix4是Flutter中用于实现3D变换效果的类，它可以用于实现Transform组件中的各种变换效果。如果我们需要实现一些高级的变换效果，那么可以通过Matrix4类提供的各种方法来实现。