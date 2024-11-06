import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: InkWell(
        splashColor: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
          print('로그인 클릭됨');

          if (_formKey.currentState!.validate()) {
            // Navigator.pushNamed(context, "/home");
          }
        },
        child: Center(
          child: Text(
            "로그인",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
