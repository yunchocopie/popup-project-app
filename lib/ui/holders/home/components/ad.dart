import 'package:flutter/material.dart';

class Ad extends StatelessWidget {
  const Ad({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
        child: Container(
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MjRfMTU2%2FMDAxNjUwNzY2ODY3Mjc4.ypBf1lOvcYliTvLjnKLK8IeZjKL_rKS1JLUD0nuD4oog.z9iwBmFTiprcJpaPNa6ePFOk1hIVM94EgI6TST8N1MMg.JPEG.incompletegirl%2FIMG_6134.JPG&type=sc960_832',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
