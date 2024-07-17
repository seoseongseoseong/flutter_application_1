import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneController = TextEditingController();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // 키보드를 숨김
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        backgroundColor: Colors.lightGreenAccent, // 배경색 설정
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone, // 숫자 키보드 설정
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for sending OTP
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('OTP Sent')),
                  );
                },
                child: Text('Send OTP'),
              ),
              TextField(
                controller: _otpController,
                decoration: InputDecoration(labelText: '인증번호'),
                keyboardType: TextInputType.number, // 숫자 키보드 설정
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for verifying OTP
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registered Successfully')),
                  );
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Verify OTP'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
