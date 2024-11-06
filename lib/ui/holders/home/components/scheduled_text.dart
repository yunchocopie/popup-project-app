import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduledText extends StatelessWidget {
  const ScheduledText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: '앞으로 열릴 팝업스토어',
                  style: TextStyle(
                    color: Colors.blue, // 특정 부분의 색상 변경
                    // 예시: 특정 부분의 글자 굵게 설정
                  ),
                ),
                TextSpan(text: "를 미리 만나보세요!"),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // 가까이 있는 매장 더보기 버튼
              InkWell(
                onTap: () {
                  print("더보기 버튼 클릭");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => NearMeStorePage(),
                  //   ),
                  // );
                },
                child: Row(
                  children: [
                    Text(
                      '더보기',
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(
                      CupertinoIcons.arrow_right,
                      size: 14,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
