Flutter中的生命周期包括以下几个阶段：

1.createState：创建StatefulWidget的状态对象

2.initState：初始化状态，在创建状态对象后立即调用

3.didChageDependencies：在initState之后调用，当依赖关系发生变化时调用

4.build：构建widget树，通常在此方法中返回一个widget

5.didUpdateWidget：在widget重新构建时调用，用于判断是否更新widget

6.setState：用于更新widget的状态，当状态发生改变时，会触发build方法重新构建widget

7.deactivate:当widget被移除时调用，可在此方法中清理资源

8.dispose：当widget被永久移除时调用，用于清理资源
