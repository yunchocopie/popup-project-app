import 'package:flutter/cupertino.dart';

class TopText extends StatelessWidget {
  const TopText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(right: 14.0, left: 14, top: 20, bottom: 14),
        child: Container(
          child: Text(
            '실시간 인기있는 팝업스토어',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
