import 'package:flutter/material.dart';


const textStyle = const TextStyle(
  fontFamily: 'Raleway',
  fontSize: 25,
);

class TextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本样例'),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            Text(
              "文本居中文本" * 6,
              textAlign: TextAlign.center,
            ),
            Text(
              "文本隐藏最大行数" * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "文本缩放",
              textScaleFactor: 1.5,
            ),
            Text(
              "文本样式",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Microsoft YaHei",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "富文本: "),
              TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue),
                  recognizer: null),
            ])),
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("文本默认样式"),
                  Text("文本默认样式"),
                  Text(
                    "不继承文本默认样式",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Text("文本字体样式",
              style: textStyle,),
          ],
        ),
      ),
    );
  }
}
