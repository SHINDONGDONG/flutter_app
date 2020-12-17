import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Camp Ground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
            Text('kland statge Switrand',
                style: TextStyle(color: Colors.grey, fontSize: 26))
          ],
        ),
        Padding(padding: EdgeInsets.all(10.0)),
        Icon(Icons.star, size: 33, color: Colors.orange),
        Text(
          '41',
          style: TextStyle(fontSize: 30),
        )
      ],
    );

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.call, size: 45, color: Colors.lightBlue),
            Text('Call', style: TextStyle(color: Colors.lightBlue))
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: <Widget>[
            Icon(Icons.near_me, size: 45, color: Colors.lightBlue),
            Text('Route', style: TextStyle(color: Colors.lightBlue))
          ],
        ),
        Padding(padding: EdgeInsets.all(40.0)),
        Column(
          children: <Widget>[
            Icon(Icons.share, size: 45, color: Colors.lightBlue),
            Text('Share', style: TextStyle(color: Colors.lightBlue))
          ],
        ),
      ],
    );
    var textSection = Container(
      child:
    Text(
        '쌍용 어드벤처는 성수기, 비성수기, 평일, 주말 상관없이 항상 동일한 가격으로 운영됩니다. 또한, 일반 캠핑사이트와 비교해서 최대 3배의 쾌적한 공간을 자랑하는데요. 100번, 200번, 300번으로 사이트를 구분하는데 대형 리빙쉘, 렉타타프, 그리고 주차까지 한 번에 할 수 있을 정도로 장소가 넓은 게 장점입니다. 무엇보다 별도로 주차를 하고 짐을 나르지 않아도 되어서 너무 편하더라고요!',
        style: TextStyle(fontSize: 12)),
      padding: EdgeInsets.all(30.0),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              "https://lh3.googleusercontent.com/proxy/mJS3ft6pC8YnW5BF5Mv__NX9LyKZACd9STzdoW0wzsXH3T1AzD6HTbXBlFD3MBr3Fg7wIMtQR5CD1foDoecDHvll4890S0x_eEstKloVDAIsk7Dup-BzFHZWwRDCFfvi-u6wcwOXSPOZV7k",
              height: 240,
              width: 600,
              fit: BoxFit.cover),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0)),
          buttonSection,
          textSection
        ],
      ),
    );
  }
}
