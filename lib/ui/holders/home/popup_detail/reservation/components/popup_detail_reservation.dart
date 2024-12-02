import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupDetailReservation extends StatelessWidget {
  const PopupDetailReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '예약 목록',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0), // 둥근 모서리 설정
                child: Image.network(
                  'https://naverbooking-phinf.pstatic.net/20241029_10/1730189320644sTNDW_PNG/PC_02.png?type=a1000_60_sharpen',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UNOVE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2024.12.25',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // 예약 취소 버튼이 눌렸을 때 처리할 코드 작성
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // 버튼 배경 색
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  '예약 취소',
                  style: TextStyle(color: Colors.white), // 텍스트 색
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
