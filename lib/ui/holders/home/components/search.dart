import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const SearchTextFieldApp());

class SearchTextFieldApp extends StatelessWidget {
  const SearchTextFieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: SearchTextFieldExample(),
    );
  }
}

class SearchTextFieldExample extends StatefulWidget {
  const SearchTextFieldExample({super.key});

  @override
  State<SearchTextFieldExample> createState() => _SearchTextFieldExampleState();
}

class _SearchTextFieldExampleState extends State<SearchTextFieldExample> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(text),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoSearchTextField(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          onChanged: (String value) {
                            print('The text has changed to: $value');
                            setState(() {
                              text = value;
                            });
                          },
                          onSubmitted: (String value) {
                            print('Submitted text: $value');
                          },
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 30,
                        child: IconButton(
                          icon: Icon(CupertinoIcons.bell, size: 23, color: Colors.black),  // 크기 증가
                          onPressed: () {
                            // TODO: 알림 아이콘 클릭 이벤트 처리
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 30,
                        child: IconButton(
                          icon: Icon(CupertinoIcons.person, size: 23, color: Colors.black),  // 크기 증가
                          onPressed: () {
                            // TODO: 사람 아이콘 클릭 이벤트 처리
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
