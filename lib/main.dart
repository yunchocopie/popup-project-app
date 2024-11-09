import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/home_page.dart';
import 'package:team_project/ui/holders/login/login_page.dart';
import 'package:team_project/ui/holders/main_holder.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> fetchClientId() async {
  final response = await http.get(Uri.parse('http://116.124.191.174:15028/api/config/client-id'));

  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('Failed to load client ID');
  }
}

void initializeNaverMap() async {
  String clientId = await fetchClientId();
  await NaverMapSdk.instance.initialize(
    clientId: clientId,
    onAuthFailed: (error) {
      print("네이버 지도 인증 실패: $error");
    },
  );
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeNaverMap();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage()
    );
  }
}