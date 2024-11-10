import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_bottom_button.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/under_line_widget.dart';

class TransactionCalenderPage extends StatefulWidget {
  @override
  State<TransactionCalenderPage> createState() =>
      _TransactionCalenderPageState();
}

class _TransactionCalenderPageState extends State<TransactionCalenderPage> {
  DateTime _selectedDay = DateTime.now(); // 선택된 날짜를 저장하는 변수
  String _selectedDateInfo = ""; // 선택된 날짜 정보를 표시할 변수

  DateTime _focusedDay = DateTime.now(); // 현재 포커스된 날짜를 현재 날짜로 설정
  //DateTime? _selectedDay; // 선택된 날짜, 초기값은 null
  //String _selectedDateInfo = ""; // 선택된 날짜의 정보를 저장할 변수

  @override
  void initState() {
    super.initState();
    _selectedDateInfo = _formatDate(_selectedDay); // 초기 날짜를 포맷하여 설정
  }

  // 날짜를 "YYYY-MM-DD" 형식으로 포맷하는 함수
  String _formatDate(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(2024),
          lastDay: DateTime(2025),
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _selectedDateInfo = _formatDate(selectedDay); // 선택된 날짜 업데이트
            });
          },
          headerStyle: HeaderStyle(
            formatButtonVisible: false, // 2weeks 버튼 삭제
            titleCentered: true,
            titleTextStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          calendarStyle: CalendarStyle(
            defaultTextStyle: TextStyle(color: Colors.black87),
            weekendTextStyle: TextStyle(color: Colors.redAccent),
            todayDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey
                  .withOpacity(0.7), // 오늘 날짜 동그라미 색상을 여기서 설정
            ),
            selectedDecoration: BoxDecoration(
              shape: BoxShape.circle,
              color: DateTime.now().toString().split(' ')[0] != _focusedDay.toString().split(' ')[0]
                  ? Colors.grey.withOpacity(0.7)
                  : Colors.blueAccent, // 선택된 날짜의 동그라미 색상을 여기서 설정
            ),
          ),
        ),
        UnderLineWidget(),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '방문 예정 날짜', // 선택된 날짜 텍스트
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _selectedDateInfo, // 선택된 날짜 출력
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        UnderLineWidget(),
        PopupDetailBottomButton(),
      ],
    );
  }
}