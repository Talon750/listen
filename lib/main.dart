import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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

        child: Column(
          children:<Widget> [
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                NeumorphicButton(
                  style: NeumorphicStyle(

                    boxShape: NeumorphicBoxShape.roundRect(

                      BorderRadius.circular(12),

                    ),

                    color: Colors.grey[200],

                    shape: NeumorphicShape.flat,

                  ),

                  child: Container(

                    color: Colors.grey[200],

                    width: 80,

                    height: 35,

                    child: const Center(

                      child: Text('btnf_1'),

                    ),

                  ),

                  onPressed: () {},

                ),

                NeumorphicButton(
                  style: NeumorphicStyle(

                    boxShape: NeumorphicBoxShape.roundRect(

                      BorderRadius.circular(12),

                    ),

                    color: Colors.grey[200],

                    shape: NeumorphicShape.flat,

                  ),

                  child: Container(

                    color: Colors.grey[200],

                    width: 80,

                    height: 35,

                    child: const Center(

                      child: Text('btnf_2'),

                    ),

                  ),

                  onPressed: () {},

                ),
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
                NeumorphicButton(
                  style: NeumorphicStyle(

                    boxShape: NeumorphicBoxShape.roundRect(

                      BorderRadius.circular(12),

                    ),

                    color: Colors.grey[200],

                    shape: NeumorphicShape.flat,

                  ),

                  child: Container(

                    color: Colors.grey[200],

                    width: 80,

                    height: 35,

                    child: const Center(

                      child: Text('btns_1'),

                    ),

                  ),

                  onPressed: () {},

                ),

                NeumorphicButton(
                  style: NeumorphicStyle(

                    boxShape: NeumorphicBoxShape.roundRect(

                      BorderRadius.circular(12),

                    ),

                    color: Colors.grey[200],

                    shape: NeumorphicShape.flat,

                  ),

                  child: Container(

                    color: Colors.grey[200],

                    width: 80,

                    height: 35,

                    child: const Center(

                      child: Text('btns_2'),

                    ),

                  ),

                  onPressed: () {},

                ),
              ],

            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Neumorphic(

              margin: const EdgeInsets.only(left: 18, right: 18, top: 2, bottom: 4),

              style: NeumorphicStyle(

              depth: NeumorphicTheme.embossDepth(context),

              boxShape: const NeumorphicBoxShape.stadium(),

              color: Colors.grey[200]),

              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),

              child: const TextField(

              decoration: InputDecoration.collapsed(hintText: '请输入URL'),

                ),

              ),
          ],

        ),

      );
  }
}







