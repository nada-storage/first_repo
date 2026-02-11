import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Widget 복습 화면'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [ // leading 사용시 왼쪽에 위젯이 배치되게 됩니다.
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.settings, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Text 복습',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),

              SizedBox(height: 12),

              Text(
                '일반 텍스트',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              Text(
                '기울임 텍스트',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),

              Text(
                '밑줄 텍스트 (underline)',
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),

              SizedBox(height: 24),

              Text(
                'Container + BoxDecoration 복습',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),

              SizedBox(height: 12),

              Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )
                ),
                child: Center(
                  child: Text(
                    '둥근 모서리 + 테두리',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ),

              SizedBox(height: 12),

              // 그림자가 있는 Container
              Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 8,
                          offset: Offset(2, 4)
                        ),
                      ],
                  ),
                  child: Center(
                    child: Text(
                      '그림자 효과',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
              ),

              SizedBox(height: 24),

              Text(
                'Row 복습',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        '빨강',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ),
                  Container(
                      width: 80,
                      height: 80,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          '초록',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                  ),
                  Container(
                      width: 80,
                      height: 80,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          '파랑',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                  )
                ],
              ),

              SizedBox(height: 24),

              Text(
                'Column + Row 중첩',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:Colors.black,
                ),
              ),

              SizedBox(height: 12),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text('위에 있는 글자'),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.blue),
                        SizedBox(width: 60),
                        Icon(Icons.arrow_forward, color: Colors.blue),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text('아래 있는 글자'),
                  ],
                ),
              )
            ]
          )
        )
      ),
    );
  }
}