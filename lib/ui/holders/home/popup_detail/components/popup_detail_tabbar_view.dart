import 'package:flutter/material.dart';

class PopupDetailTabbarView extends StatelessWidget {
  const PopupDetailTabbarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 25, left: 25),
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                        '팝업스토어 명',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: 45,
                      height: 18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Text('상태', style: TextStyle(fontSize: 12, color: Colors.white)),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Text(
                          "기간 : ",
                          style: TextStyle(
                            fontSize: 10
                          ),
                        ),
                        Text(
                            "시간 : ",
                          style: TextStyle(
                              fontSize: 10
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '* 유의사항 : ',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('혜택'),
                    SizedBox(width: 40),
                    Flexible(
                      child: Text('쿠폰 받기'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('영업시간'),
                    SizedBox(width: 16),
                    Flexible(
                      child: Text('월 화 수 목 금 토 일 09:00~00:00'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('휴무일'),
                    SizedBox(width: 29),
                    Text('없음'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('전화번호'),
                    SizedBox(width: 16),
                    Text('0518195485'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('주소'),
                    SizedBox(width: 40),
                    Flexible(
                      child: Text(
                        '부산광역시 사하구\n낙동대로550번길 37 1층',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 1,
                  color: Colors.blue,
                ),
                Row(
                  children: [
                    Spacer(),
                    Spacer(),
                  ],
                ),
                // TODO: 지도 적용해야함
              ],
            ),
          ),
          Center(
            child: Text('예약'),
          ),
          Center(
            child: Text('리뷰'),
          ),
          Center(
            child: Text('지도'),
          ),
        ],
      ),
    );
  }
}
