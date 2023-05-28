// 水平选项卡(TabBar)及其内容组件(TabBarView)通常成对出现，前者在AppBar下方显示一个水平的
// 选项卡，后者根据选项卡显示相应的页面视图
// 具体用法
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  var _tabs = <Tab>[];
  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 0, length: 3, vsync: this);
    _tabs=<Tab>[
      Tab(text:"TabA"),
      Tab(text:"TabB"),
      Tab(text:"TabC")]
    }
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appbar:AppBar(
          title:Text(widget.title),
          bottom:TabBar(tabs: _tabs,
          indicatorColor:Colors.white,
          indicatorWeight:5,
          indicatorSize:TabBarIndicatorSize.tab,
          controller:_controller
          ),
        ),
        body:TabBarView(
          controller:_controller,
          children: _tabs.map((Tab tab) => Container(child:Center(child:Text(tab.text)))).toList()),
      );
    }
    @override
    // 不要忘记在回调的dispose（）方法中调用_controller.dispose（）方法，确保在父组件销毁时能够释放资源
    void dispose(){
      super.dispose();
      _controller.dispose();
    }
  }
  // TabBar属性
  // tabs选项卡的列表，每个选项卡都是一个Tab对象
  // controller 控制选项卡的位置，通常与TabBarView的controller属性对应使用
  // isScrollable 是否允许选项卡水平滚动，默认为false
  // indicatorColor 选项卡指示器的颜色
  // indicatorWeight  选项卡指示器的厚度
  // indicatorSize 选项卡指示器的大小
  // labelColor 选项卡标签的颜色
  // labelStyle 选项卡标签的样式
  // unselectedLabelColor  未选中选项卡标签的颜色
  // unselectedLabelStyle  未选中选项卡标签的样式
  // dragStartBehavior  拖动开始行为 

  // TabBarView属性
  // children 内容视图列表，每个内容视图都是一个Widget对象
  // controller 控制选项卡的位置，通常与TabBar的controller属性对应使用
  // physics内容视图的滚动物理效果
  // dragStartBehavior 拖动开始行为
