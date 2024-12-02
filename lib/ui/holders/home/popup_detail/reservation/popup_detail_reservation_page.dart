import 'package:flutter/material.dart';

import 'components/popup_detail_reservation.dart';

class PopupDetailReservationPage extends StatelessWidget {
  const PopupDetailReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PopupDetailReservation(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Text(
          '예약 확인 페이지',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
