import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0.0),
      children: [
        _buildProductTile(
          "https://via.placeholder.com/150",
          "키링",
          5500,
        ),
        Divider(),
        _buildProductTile(
          "https://via.placeholder.com/150",
          "텀블러",
          25000,
        ),
        Divider(),
        _buildProductTile(
          "https://via.placeholder.com/150",
          "크로스백",
          45000,
        ),
      ],
    );
  }

  Widget _buildProductTile(String imageUrl, String productName, int price) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5), // 둥근 이미지 설정
        child: Image.network(
          imageUrl,
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("₩$price", style: TextStyle(color: Colors.grey[600])),
    );
  }
}
