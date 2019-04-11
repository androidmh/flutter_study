import 'package:flutter/material.dart';

const textStyle = const TextStyle(
  fontSize: 18,
);

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image示例'),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '1.从asset中加载图片',
              style: textStyle,
            ),
            Image.asset(
              "images/avatar.jpg",
              width: 100.0,
            ),
            Text(
              '2.从网络加载图片(并添加混合色/混合模式)',
              style: textStyle,
            ),
            Image.network(
              "https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1629928928,1392365634&fm=173&app=25&f=JPEG?w=218&h=146&s=FF24556EEC2EA73449E039B902003013",
              width: 100.0,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Text(
              '3.ICON(字体图标)',
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_shopping_cart,color: Colors.green,size: 40,),
                Icon(Icons.error,color: Colors.green,size: 40,),
                Icon(Icons.fingerprint,color: Colors.green,size: 40,),
              ],
            ),
            Text(
              '3.ICON(自定义字体图标)',
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(MyIcons.book,color: Colors.purple,),
                Icon(MyIcons.wechat,color: Colors.green,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
class MyIcons{
  // book 图标
  static const IconData book = const IconData(
      0xe614,
      fontFamily: 'myIcon',
      matchTextDirection: true
  );
  // 微信图标
  static const IconData wechat = const IconData(
      0xec8d,
      fontFamily: 'myIcon',
      matchTextDirection: true
  );
}
