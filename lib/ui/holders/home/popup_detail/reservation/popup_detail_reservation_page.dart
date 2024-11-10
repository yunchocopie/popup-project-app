import 'package:flutter/material.dart';

import 'components/popup_detail_reservation.dart';

class PopupDetailReservationPage extends StatelessWidget {
  const PopupDetailReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PopupDetailReservation(),
    );
  }
}
