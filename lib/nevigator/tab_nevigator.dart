import 'package:flutter/material.dart';
import 'package:listen/pages/home_page.dart';
import 'package:listen/pages/my_page.dart';
import 'package:listen/pages/search_page.dart';
import 'package:listen/pages/travel_page.dart';
class Tab_Nevigator extends StatefulWidget{
  @override
  _TabNavigator createState()=>_TabNavigator();

}
class _TabNavigator extends State<Tab_Nevigator>{
  final _defaultColor=Colors.grey;
  final _activeColor=Colors.blue;
  int _currentIndex=0;
  final PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller:_controller ,
        children: [
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: _activeColor,
        onTap: (int index){
          _controller.jumpToPage(index);
          setState(() {
            this._currentIndex=index;
          });

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "搜索",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "旅拍",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "我的",
          )
        ],
      ),
    );
  }
  
}