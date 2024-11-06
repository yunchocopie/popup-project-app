import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScheduldedPopupFrame extends StatelessWidget {
  final String cafeName;
  final int distance;
  final IconData iconData;
  final String imageUrl;

  const ScheduldedPopupFrame({
    required this.cafeName,
    required this.distance,
    required this.iconData,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.3,
              color: Colors.white,
            ),
          ),
          width: 163,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildClipRRect(Right: 10, Left: 10),
                ],
              ),

            ],
          ),
        ),
      ),
      onTap: () {
        // TODO: 매장 연결
      },
    );
  }

  Widget buildClipRRect({double Left = 0, double Right = 0}) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(Right),
        topRight: Radius.circular(Left),
        bottomLeft: Radius.circular(Right),
        bottomRight: Radius.circular(Left)
      ),
      child: Stack(children: [
        Image.network(
          imageUrl,
          width: 161,
          height: 110,
          fit: BoxFit.cover,
        ),
        const Positioned(
          top: 178,
          right: 80,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.heart_fill,
                size: 13,
                color: Colors.redAccent,
              ),
              SizedBox(width: 3),
              Text(
                "13",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
              Icon(
                CupertinoIcons.ellipses_bubble_fill,
                size: 13,
                color: Colors.white,
              ),
              SizedBox(width: 3),
              Text(
                "214",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 3),
            ],
          ),
        ),
      ]),
    );
  }
}
