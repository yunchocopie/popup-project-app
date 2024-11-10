import 'package:flutter/material.dart';

import '../reservation/popup_detail_reservation_page.dart';

class PopupDetailBottomButton extends StatelessWidget {
  const PopupDetailBottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // 버튼의 배경색
        shape: RoundedRectangleBorder(
          // 버튼의 모양을 변경하기 위해 사용
          borderRadius: BorderRadius.circular(5), // 원하는 모양으로 변경 가능
        ),
        fixedSize:
        Size(MediaQuery.of(context).size.width * 1, 40), // 버튼의 너비와 높이 설정
      ),
      child: Text(
        "예약하기",
        style: TextStyle(
            color: Colors.white, // 버튼 텍스트 색상
            fontSize: 18, // 버튼 텍스트 크기
            fontWeight: FontWeight.bold),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // 팝업 모서리 둥글게
              ),
              backgroundColor: Colors.white,
              title: Text(
                '예약 확인',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8, // 팝업 가로 크기 설정
                child: Text(
                  '예약을 확정하시겠습니까?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // 팝업 닫기
                  },
                  child: Text(
                    '취소',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PopupDetailReservationPage(),
                      ),
                    );
                  },
                  child: Text(
                    '확인',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}