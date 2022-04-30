import 'package:flutter/material.dart';
class MyPage extends StatefulWidget{
  @override
  _TabNavigator createState()=>_TabNavigator();

}
class _TabNavigator extends State<MyPage>{
  final PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('我的'),
      ),
    );
  }
  
}