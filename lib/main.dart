import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Size Adjuster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: newApp(),
    );
  }
}

class newApp extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<newApp> {
  double _fontSize = 16.0; // 초기 폰트 크기

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //상단의 앱 바
        title: Text('스크롤로 폰트 사이즈 조절하기'),
      ),
      body: Padding( //안쪽 여백의 양 결정
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Slider(
              value: _fontSize, //슬라이더로 폰트사이즈 조정
              min: 10,
              max: 30,
              onChanged: (value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
            Text(
              '(크기가 조절되는 텍스트)',
              style: TextStyle(fontSize: _fontSize), //폰트사이즈 조정함
            ),
          ],
        ),
      ),
    );
  }
}