import 'package:flutter/material.dart';
import 'components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: CustomBackAppBar(title: ''),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
          '회원가입',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: JoinBody(),
    );
  }
}
