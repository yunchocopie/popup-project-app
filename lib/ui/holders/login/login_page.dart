import 'package:flutter/material.dart';

import 'components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
            '로그인',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      //appBar: CustomBackAppBar(title: ''),
      body: LoginBody(),
    );
  }
}
