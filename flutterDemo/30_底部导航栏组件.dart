// 底部导航栏组件(bottomNavigationBar)该组件在scaffold脚手架组件中使用
// 具体用法
class _MyHomePageState extends State<MyHomePage>
      {
        int _currentIndex=0;
        List<Widget> _children;
      
        @override
        void initState() {
          super.initState();
        _children=new List();
        _children.add(Text("Home"));
        _children.add(Text("List"));
        _children.add(Text("Setting"));}

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          title:Text(widget.title),)
          body:_children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:_currentIndex,
            onTap:(int index){
              setState((){
                _currentIndex=index;
              });
            },
            items:[
              BottomNavigationBarItem( 
                title:new Text("Home"),
                icon: new Icon(Icons.home)),
                 BottomNavigationBarItem( 
                title:new Text("List"),
                icon: new Icon(Icons.list)),
                 BottomNavigationBarItem( 
                title:new Text("Setting"),
                icon: new Icon(Icons.settings)),
            ]
          )
          );
    }
  }
  // 常用属性
  // items  导航栏项目列表
  // currentIndex 当前选择导航栏项目的索引
  // onTap 点击导航栏项目时触发的回调函数
  // backgroundColor：导航栏的背景颜色。
  // elevation：导航栏的阴影高度。
  // iconSize：导航栏项目图标的大小。
  // selectedFontSize：选中导航栏项目时的字体大小。
  // unselectedFontSize：未选中导航栏项目时的字体大小。
  // selectedLabelStyle：选中导航栏项目时的文字样式。
  // unselectedLabelStyle：未选中导航栏项目时的文字样式。
  // selectedItemColor：选中导航栏项目时的颜色。
  // unselectedItemColor：未选中导航栏项目时的颜色。
  // type：导航栏的类型，可选值为BottomNavigationBarType.fixed和BottomNavigationBarType.shifting。
 