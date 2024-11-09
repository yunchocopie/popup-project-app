import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/components/nearby_popup.dart';
import 'package:team_project/ui/holders/home/components/scheduled_popup.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'components/ad.dart';
import 'components/grey_blank.dart';
import 'components/search.dart';
import 'components/top_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  // 현재 위치를 가져오는 메서드
  void _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        _currentPosition = position;
      });
      _sendLocationToServer(position);
    } catch (e) {
      print("위치 가져오기 오류: $e");
    }
  }

  // 위치 정보를 서버로 전송하는 메서드
  Future<void> _sendLocationToServer(Position position) async {
    final url = Uri.parse("http://116.124.191.174:15028/api/location/coordinates");

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "userLatitude": position.latitude,
          "userLongitude": position.longitude,
        }),
      );

      if (response.statusCode == 200) {
        print("위치가 서버에 성공적으로 전송되었습니다: ${response.body}");
      } else {
        print("서버 오류: ${response.statusCode}");
      }
    } catch (e) {
      print("위치 전송 중 오류 발생: $e");
    }
  }

  void startSendingLocationUpdates() {
    Geolocator.getPositionStream(locationSettings: LocationSettings(accuracy: LocationAccuracy.high))
        .listen((Position position) {
      _sendLocationToServer(position);
    });
  }

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
