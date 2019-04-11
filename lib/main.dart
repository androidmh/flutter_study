import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_study/cupertino.dart';
import 'package:flutter_study/new_route.dart';
import 'package:flutter_study/new_route2.dart';
import 'package:flutter_study/new_route3.dart';
import 'package:flutter_study/text.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        'new_page': (context) => NewRoute(),
        'new_page2': (context) => ParentWidget(),
        'new_page3': (context) => ParentWidgetC(),
        'new_page4': (context) => CupertinoTestRoute(),
        'new_page5': (context) => TextExample(),
      },
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.toString()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('Widget管理自身状态'),
              textColor: Colors.blue,
              onPressed: () {
//                Navigator.push(context,
//                    new MaterialPageRoute(builder: (context) {
//                  return new NewRoute();
//                }));
                Navigator.pushNamed(context, 'new_page');
              },
            ),
            FlatButton(
              child: Text('父widget管理子widget的state'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page2');
              },
            ),
            FlatButton(
              child: Text('混合管理'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page3');
              },
            ),
            FlatButton(
              child: Text('ios动画'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page4');
              },
            ),
            FlatButton(
              child: Text('Text示例'),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, 'new_page5');
              },
            ),
            RandomWordsWidget()
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
