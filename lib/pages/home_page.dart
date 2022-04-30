import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:listen/items/ListData.dart';
const APPBAR_SCROLL_OFFSET=100;
class HomePage extends StatefulWidget{
  @override
  _TabNavigator createState()=>_TabNavigator();

}
class _TabNavigator extends State<HomePage>{
  final PageController _controller=PageController(
    initialPage: 0,
  );
  String resultString="";
  @override
  void initState(){
    super.initState();
    loadData();
  }
  _onScroll(offset){
   double alpha=offset/APPBAR_SCROLL_OFFSET;
   if(alpha<0){
     alpha=0;
   }else if(alpha>1){
     alpha=1;
   }
   setState(() {
     appBarAlpha=alpha;
   });
  }
  loadData(){
    /*HomeDao.fetch().then((value){
      setState(() {
       resultString=json.encode(value);
      });
    }).catchError((e){
      setState(() {
        resultString=e.toString();
      });
    });*/
  }
  double appBarAlpha=0;
  @override
  Widget build(BuildContext context) {
    List _imageUrls=[
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20180402%2F5b06445dbd494603b785cf1dfcafd467.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653068006&t=b5826199a002112da0286578a2b7a2af',
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.sc.enterdesk.com%2Fedpic%2Fdd%2Fa1%2Fc9%2Fdda1c99855855c861621665f16cfb8f1.jpg&refer=http%3A%2F%2Fup.sc.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653068092&t=80a96e22067e2b15eb300258664edd0d',
      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.k1u.com%2Fk1u%2Fmb%2Fd%2Ffile%2F20210305%2F1614908005147824_836_10000.jpg&refer=http%3A%2F%2Fpic1.k1u.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1653068112&t=4e20d9c2a5a81c0a17d949ae6a53e6c4',
    ];
    return Scaffold(
      body: Stack(
        children: [
          MediaQuery.removePadding(context: context,
            removeTop: true,
            child: NotificationListener(
              onNotification: (ScrollNotification) {
                if(ScrollNotification is ScrollUpdateNotification && ScrollNotification.depth==0){
                  _onScroll(ScrollNotification.metrics.pixels);
                }
                return false ;
              },
              child: Container(
                padding: EdgeInsets.only(top: 80),
                child:MyList(),
              ),
            ),
          ),
          Opacity(
            opacity: appBarAlpha,
            child: Container(
            height: 80,
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Padding(padding: EdgeInsets.only(top: 20),
              child: Text('首页'),),

            ),

          ),
          ),
        ],
      )
    );
  }
  
}