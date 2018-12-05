import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('我的第一个Flutter APP'),
          ),
          body: HelloRectangle())));
}

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 400,
      child: InkWell(
        highlightColor: Colors.red,
        splashColor: Colors.tealAccent,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.cake),
            ),
            ColorChangeBtn()
          ],
        ),
      ),
    ));
  }
}

// 变颜色的button
class ColorChangeBtn extends StatefulWidget {
  ColorChangeBtn();
  @override
  createState() => _ColorChangeBtn();
}

class _ColorChangeBtn extends State<ColorChangeBtn> {
  Color _color = Colors.red;
  var _count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Center(
        child: Text('$_count'),
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
          child: FlatButton(
            child: Text('点我变颜色'),
            color: _color,
            onPressed: () {
              print(_count);
              setState(() {
                _count++;
                _color = Color.fromRGBO(
                    Random.secure().nextInt(255),
                    Random.secure().nextInt(255),
                    Random.secure().nextInt(255),
                    1);
                print(_color);
              });
            },
          )),
    ]);
  }
}
