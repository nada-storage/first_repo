import 'package:flutter/material.dart';
import 'card_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  // 컨트롤러 선언
  final TextEditingController nameController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  // 메모리 정리
  @override
  void dispose() {
    nameController.dispose();
    jobController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('명함 정보 입력'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 안내 텍스트
              Text(
                '명함에 들어갈 정보를 입력하세요',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                ),
              ),

              SizedBox(height: 24),

              // 이름 입력
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: '이름',
                  hintText: '홍길동',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 16),

              // 직업 입력
              TextField(
                controller: jobController,
                decoration: InputDecoration(
                  labelText: '직업',
                  hintText: 'Flutter 개발자',
                  prefixIcon: Icon(Icons.work),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 16),

              // 이메일 입력
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: '이메일',
                  hintText: 'example@email.com',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 16),

              // 전화번호 입력
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: '전화번호',
                  hintText: '010-1234-5678',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              SizedBox(height: 32),

              // 명함 만들기 버튼
              ElevatedButton(
                onPressed: () {
                  // 값 전달하며 화면 이동
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardPage(
                        name: nameController.text,
                        job: jobController.text,
                        email: emailController.text,
                        phone: phoneController.text,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  '명함 만들기',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
