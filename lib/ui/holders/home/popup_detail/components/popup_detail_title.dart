import 'package:flutter/material.dart';

class PopupDetailTitle extends StatelessWidget {
  const PopupDetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '컴포즈커피 서면학원점',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
