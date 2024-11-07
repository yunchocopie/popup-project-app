import 'package:flutter/material.dart';

class PopupDetailTabbar extends StatelessWidget {
  const PopupDetailTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: TabBar(
        dividerColor: Colors.blue,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue, // 선택된 탭의 배경색
        ),
        indicatorPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
        // 세로 높이 조정
        labelPadding: EdgeInsets.zero,
        unselectedLabelColor: Colors.white,
        // 선택되지 않은 텍스트 색상
        labelColor: Colors.white,
        // 선택된 텍스트 색상
        tabs: [
          Tab(
            child: Container(
              width: 55,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2), // 선택되지 않은 탭 배경
              ),
              child: Text('정보', style: TextStyle(fontSize: 12)),
            ),
          ),
          Tab(
            child: Container(
              width: 55,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Text('예약', style: TextStyle(fontSize: 12)),
            ),
          ),
          Tab(
            child: Container(
              width: 55,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Text('리뷰', style: TextStyle(fontSize: 12)),
            ),
          ),
          Tab(
            child: Container(
              width: 55,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.2),
              ),
              child: Text('지도', style: TextStyle(fontSize: 12)),
            ),
          ),
        ],
      ),
    );
  }
}
