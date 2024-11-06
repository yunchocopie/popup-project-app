import 'package:flutter/material.dart';

class GreyBlank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 5,
        child: Container(
          color: Colors.grey[100],
        ),
      ),
    );
  }
}