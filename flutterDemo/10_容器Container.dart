// Container是一个常用的UI组件，用于包含其他UI组件，并可以对这些组件进行布局和装饰
// 常用属性：
// 1.color 指定容器的背景颜色
// 2.指定容器内部的填充区域
// 3.margin指定容器的外边距
// 4.decoration指定容器的装饰效果（背景 边框 圆角  阴影）
// 5.width、height指定容器的宽度和高度
// 6.alignment指定容器内部子组件的对齐方式
// 7.child  需要被包含在容器中的子组件
// 8.constrants  约束 当width height constrants都存在时 width和height优先，此时Constrants会根据width和height的值动态的重新生成
//9.Transform  变换
Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ],
            ),
            child: Text(
              "Hello Flutter",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
