import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
          title: Text('Login'),
        ),
        backgroundColor: Colors.lightBlueAccent, // 배경색 설정
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
                decoration: InputDecoration(labelText: 'OTP'),
                keyboardType: TextInputType.number, // 숫자 키보드 설정
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Placeholder for verifying OTP
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logged in Successfully')),
                  );
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Verify OTP'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Don\'t have an account? Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
