import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupDetailAppbar extends StatelessWidget {
  const PopupDetailAppbar({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // pinned: true, TODO: 스크롤하면 다른 디자인 앱바 나오게 하기
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, size: 18),
        color: Colors.white,
      ),
      actions: [
        IconButton(
          onPressed: () {
            // TODO : 하트 기능
          },
          icon: Icon(CupertinoIcons.heart),
          color: Colors.white,
        ),
        SizedBox(width: 10),
      ],
      expandedHeight: screenHeight * 0.5,
      // 사진이 차지하는 화면 비율
      flexibleSpace: PageView.builder(
        itemCount: 1, // 사진 여러개 일시 갯수 입력하고 옆으로 넘기기
        itemBuilder: (context, index) {
          return Image.network(
            // "https://picsum.photos/id/${index + 1}/200/300",
            'http://tnnews.co.kr/wp-content/uploads/2024/06/%EC%9D%B4%EB%AF%B8%EC%A7%80-03-4%EC%9B%94-%EC%84%B1%EC%88%98%EB%8F%99%EC%97%90%EC%84%9C-%EB%86%93%EC%B9%98%EC%A7%80-%EB%A7%90%EC%95%84%EC%95%BC-%ED%95%A0-%ED%8C%9D%EC%97%85-3%EA%B3%B3-%EC%B6%94%EC%B2%9C_%ED%95%98%EC%9D%B4%ED%8A%B8%EC%A7%84%EB%A1%9C_0412.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
