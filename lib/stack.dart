import 'package:flutter/material.dart';

const _textStyle = const TextStyle(height: 1.5, fontSize: 18);
FocusNode focusNode = new FocusNode();

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
        ),
        body: //通过ConstrainedBox来确保Stack占满屏幕
            ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.red,
              ),
              Container(
                width: 350,
                height: 350,
                color: Colors.green,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.blueAccent,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.yellow,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.purple,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 15,
                height: 15,
                color: Colors.white,
              ),
            ],
          ),
        ));
  }
}
