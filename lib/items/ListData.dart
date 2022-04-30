import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listen/my_josns/josn_news.dart';
class MyList extends StatelessWidget{
  Widget _getListData(context,index){
    return ListTile(
      title: Text(listData[index]["title"]),
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["subtitle"]),
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: listData.length,
          itemBuilder: this._getListData
      );
  }

}