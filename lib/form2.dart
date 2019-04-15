import 'package:flutter/material.dart';

const _textStyle = const TextStyle(height: 1.5, fontSize: 16);

class Form2Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义输入框'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Theme(
            data: Theme.of(context).copyWith(
                hintColor: Colors.grey[200], //定义下划线颜色
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.grey),//定义label字体样式
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)//定义提示文本样式
                )
            ),
            child: Column(
              children: <Widget>[
                Text(
                  '自定义输入框下划线样式(但会导致label高亮失效)',
                  style: _textStyle,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "用户名或邮箱",
                      prefixIcon: Icon(Icons.person)
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "密码",
                      hintText: "您的登录密码",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                  ),
                  obscureText: true,
                ),
                Text(
                  '组合widget实现自定义下划线样式(需取消Theme)',
                  style: _textStyle,
                ),
                Container(
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "电子邮件地址",
                          prefixIcon: Icon(Icons.email),
                          border: InputBorder.none //隐藏下划线
                      )
                  ),
                  decoration: BoxDecoration(
                    // 下滑线浅灰色，宽度1像素
                      border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0))
                  ),
                ),
              ],
            )
        )
      )),
    );
  }
}

