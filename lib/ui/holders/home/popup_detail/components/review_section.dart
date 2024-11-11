// lib/ui/holders/home/popup_detail/components/review_section.dart
import 'package:flutter/material.dart';

class ReviewSection extends StatefulWidget {
  @override
  _ReviewSectionState createState() => _ReviewSectionState();
}

class _ReviewSectionState extends State<ReviewSection> {
  final TextEditingController _reviewController = TextEditingController();
  int _rating = 0; // 별점 초기값

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: [
              _buildReviewTile("정말 멋진 팝업 스토어예요!", "2024-11-08", 5),
              Divider(),
              _buildReviewTile("상품 구성이 너무 좋아요.", "2024-11-09", 4),
              Divider(),
              _buildReviewTile("친절한 직원분들 덕분에 좋은 경험이었습니다.", "2024-11-10", 5),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('별점:'),
                  SizedBox(width: 8.0),
                  Row(
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(
                          Icons.star,
                          color: index < _rating ? Colors.yellow : Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _rating = index + 1;
                          });
                        },
                      );
                    }),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 300, // 원하는 너비
                      height: 44, // 원하는 높이
                      child: TextField(
                        controller: _reviewController,
                        maxLines: 1, // 한 줄로 제한
                        decoration: InputDecoration(
                          hintText: '리뷰를 입력하세요',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12), // 텍스트 패딩 추가
                        ),
                      ),
                    ),


                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      _submitReview(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // 버튼 색상 변경
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5), // 사각형 모양
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // 버튼 크기 조정
                    ),
                    child: Text(
                      '제출',
                      style: TextStyle(color: Colors.white), // 텍스트 색상 변경
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReviewTile(String reviewText, String date, int rating) {
    return ListTile(
      title: Text(
          reviewText,
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              date,
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          Row(
            children: List.generate(5, (index) {
              return Icon(
                Icons.star,
                color: index < rating ? Colors.yellow : Colors.grey,
                size: 20.0,
              );
            }),
          ),
        ],
      ),
    );
  }

  void _submitReview(BuildContext context) {
    final reviewText = _reviewController.text;

    if (reviewText.isNotEmpty && _rating > 0) {
      print("리뷰 제출: $reviewText, 별점: $_rating");

      _reviewController.clear();
      setState(() {
        _rating = 0;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('리뷰가 성공적으로 제출되었습니다.')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('리뷰 내용을 입력하고 별점을 선택해주세요.')),
      );
    }
  }

  @override
  void dispose() {
    _reviewController.dispose();
    super.dispose();
  }
}
