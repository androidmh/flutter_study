import 'package:flutter/material.dart';

Widget redBox = DecoratedBox(
  decoration: BoxDecoration(color: Colors.red),
);
const _textStyle = const TextStyle(height: 1.5, fontSize: 18);

class ConstrainedBoxRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'ConstrainedBox',
            style: _textStyle,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight: 50.0 //最小高度为50像素
                ),
            child: Container(height: 2.0, child: redBox),
          ),
          Text(
            'SizedBox',
            style: _textStyle,
          ),
          SizedBox(width: 80.0, height: 80.0, child: redBox),
          Text(
            '多重限制',
            style: _textStyle,
          ),
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                child: redBox,
              )),
          Text(
            'UnconstrainedBox(虽然不限制子widget大小，但是父widget高度还是存在的)',
            style: _textStyle,
          ),
          ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
              child: UnconstrainedBox(
                //“去除”父级限制
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                  //子
                  child: redBox,
                ),
              ))
        ],
      ),
    );
  }
}
