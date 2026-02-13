import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  // 전달받을 값들 선언
  final String name;
  final String job;
  final String email;
  final String phone;

  // 생성자 (이니셜라이저)
  CardPage({
    required this.name,
    required this.job,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('나의 명함'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 프로필 아이콘
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.indigo[100],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.indigo,
                    ),
                  ),

                  SizedBox(height: 16),

                  // 이름
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 4),

                  // 직업
                  Text(
                    job,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                    ),
                  ),

                  SizedBox(height: 24),

                  // 구분선
                  Divider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),

                  SizedBox(height: 16),

                  // 이메일
                  Row(
                    children: [
                      Icon(Icons.email, color: Colors.indigo),
                      SizedBox(width: 12),
                      Text(
                        email,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  // 전화번호
                  Row(
                    children: [
                      Icon(Icons.phone, color: Colors.indigo),
                      SizedBox(width: 12),
                      Text(
                        phone,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}