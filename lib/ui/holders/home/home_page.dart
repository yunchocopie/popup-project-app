import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/components/nearby_popup.dart';
import 'package:team_project/ui/holders/home/components/scheduled_popup.dart';

import 'components/ad.dart';
import 'components/grey_blank.dart';
import 'components/search.dart';
import 'components/top_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: SearchTextFieldApp(),
      ),
      body: CustomScrollView(
        slivers: [
          TopText(),
          Ad(),
          GreyBlank(),
          ScheduledPopup(),
          NearbyPopup(),
        ],
      ),
    );
  }
}
