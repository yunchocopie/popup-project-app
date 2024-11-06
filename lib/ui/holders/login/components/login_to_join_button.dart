import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/home_page.dart';
import 'package:team_project/ui/holders/login/join/components/join_body.dart';
import 'package:team_project/ui/holders/login/join/join_page.dart';

class LoginToJoinButton extends StatelessWidget {
  const LoginToJoinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.blue, // 테두리 색상 설정
          width: 1.0,       // 테두리 두께 설정
        ),
      ),
      child: InkWell(
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => JoinPage()),
          );
          print('회원가입 클릭됨');

        },
        child: Center(
          child: Text(
            "회원가입",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
