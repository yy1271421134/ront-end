import 'package:flutter/material.dart';
void main() => runApp(MyApp())
class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp>{
  GlobalKey<FormState> formGlobalKey =GlobalKey<FormState>();
  String username;
  void save(){
    var form =formGlobalKey.currentState;
    if(form.validate()){
      form.save();
    }
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Form demo"
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form demo"),
        ),
        body: Column(children: Widget[
          //检验输入内容的合法性
          Form(
            key:formGlobalKey,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "姓名"
              ),
              //验证条件
              validator: (content) {
                if(content.length<=0){
                  return "姓名太短";
                }else if(content.length >8){
                  return "姓名过长"
                }
              },
              //保存数据
              onSaved: (content){
                username=content;
              },
            ),
          ),
          RaisedButton(onPressed:save,child:Text("保存"))
        ],),
      ),

    )
  }
}
