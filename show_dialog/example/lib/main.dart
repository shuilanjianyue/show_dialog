import 'package:show_dialog/show_dialog.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '中间弹出窗'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _showDialog() {
    showDialog(
        barrierDismissible: true,//是否点击空白区域关闭对话框,默认为true，可以关闭
        context: context,
        builder: (BuildContext context){
          return ShowDialog(
            title: '你要取消订单吗？',
            cancell: '取消',
            sure: '确定',   //也可以不传这个参数，一个界面的
            cancellCilck: (){
              print('取消');
            },
            sureClick: (){
              print('确定');
            },
          );
        }
    );
  }


  void _showOneDialog(){
    showDialog(
        barrierDismissible: true,//是否点击空白区域关闭对话框,默认为true，可以关闭
        context: context,
        builder: (BuildContext context){
          return ShowDialog(
            title: '你好，你的订单取消成功了',
            cancell: '知道了',
            cancellCilck: (){
              print('知道了');
            },
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            GestureDetector(
              onTap: _showDialog,
              child: Container(
                child: Text(
                  '防iOS弹出窗，两个按钮',
                ),
              ),
            ),

            SizedBox(height: 40,),

            GestureDetector(
              onTap: _showOneDialog,
              child: Container(
                child: Text(
                  '防iOS弹出窗，1个按钮',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
