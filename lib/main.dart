import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {// import 'next_page.dart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫 번째 화면'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage(
                      message: '안녕하세요',
                    )),
                  );
                },
                child: Text('인사하기')
            ),

            SizedBox(height: 20),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage(
                      message: '반갑습니다',
                    )),
                  );
                },
                child: Text('반가워하기')
            ),

            SizedBox(height: 20),

            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage(
                      message: '오늘 날씨가 좋네요!',
                    )),
                  );
                },
                child: Text('날씨이야기')
            ),
          ]
        )
      ),
    );
  }
}