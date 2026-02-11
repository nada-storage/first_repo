import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{

  // 값을 저장할 변수 선언
  final String message;

  // 이니셜라이저
  NextPage({required this.message});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
      title: Text('두번째 화면'),
      backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      )
    );
  }
}