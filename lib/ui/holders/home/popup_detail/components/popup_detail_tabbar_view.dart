import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_tabbar_reservation.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_tabbar_reservation_header.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/review_section.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/product_section.dart';

class PopupDetailTabbarView extends StatefulWidget {
  const PopupDetailTabbarView({Key? key}) : super(key: key);


  @override
  _PopupDetailTabbarViewState createState() => _PopupDetailTabbarViewState();
}

class _PopupDetailTabbarViewState extends State<PopupDetailTabbarView> {
  NLatLng? _userLocation;


  void _onMapReady(NaverMapController controller) async {

    // 위치 오버레이 객체 가져오기
    final marker = NMarker(id: "popup", position: NLatLng(35.115834043943664, 128.96686365459226));
    final locationOverlay = await controller.getLocationOverlay();

    locationOverlay.setIcon(const NOverlayImage.fromAssetImage('lib/ui/asset/icon/img.png'));
    locationOverlay.setIconSize(Size(28.35,28.35));
    controller.setLocationTrackingMode(NLocationTrackingMode.noFollow);

    controller.addOverlayAll({marker});
  }


  @override
  void initState() {
    super.initState();
    _initializeMap();
  }

  Future<NLatLng> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return NLatLng(position.latitude, position.longitude);
  }





  Future<void> _initializeMap() async {
    _userLocation = await getCurrentLocation();
    setState(() {});
  }





  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 25, left: 25),
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '팝업스토어 명',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),

                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 45,
                      height: 18,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue,
                      ),
                      child: Text(
                        '상태',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "기간 : ",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "시간 : ",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '* 유의사항 : ',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('혜택'),
                    SizedBox(width: 40),
                    Flexible(
                      child: Text('쿠폰 받기'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('영업시간'),
                    SizedBox(width: 16),
                    Flexible(
                      child: Text('월 화 수 목 금 토 일 09:00~00:00'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('휴무일'),
                    SizedBox(width: 29),
                    Text('없음'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('전화번호'),
                    SizedBox(width: 16),
                    Text('0518195485'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('주소'),
                    SizedBox(width: 40),
                    Flexible(
                      child: Text(
                        '부산광역시 사하구\n낙동대로550번길 37 1층',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 1,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          ProductSection(),
          SingleChildScrollView(child: TransactionCalenderPage()),
          Center(
            child: ReviewSection(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
            width: 400,
            height: 400,
              child: _userLocation == null
                  ? CircularProgressIndicator()
                  : NaverMap(
                onMapReady: _onMapReady
                ,
                options:NaverMapViewOptions(
                initialCameraPosition: NCameraPosition(
                  target: _userLocation!,
                  zoom: 15,
                )
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}