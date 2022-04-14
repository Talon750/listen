import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title: Text('晰语智听'),
         backgroundColor: Colors.blue,
          centerTitle: true,
    ),
        body: newPage(),
      ),
      theme: ThemeData(
  primarySwatch: Colors.lightBlue
      ),
      );
  }
}




class newPage extends StatefulWidget {
  const newPage({Key? key}) : super(key: key);

  @override
  _newPageState createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
        child: Text(
          '你好，flutter 1',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.white,
          ),
        ),
        width: 300.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            width: 5.0,
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
    );
  }
}






