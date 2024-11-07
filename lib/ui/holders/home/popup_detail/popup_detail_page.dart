import 'package:flutter/material.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_appbar.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_bottom_button.dart';
import 'package:team_project/ui/holders/home/popup_detail/components/popup_detail_tabbar.dart';

import 'components/popup_detail_tabbar_view.dart';
import 'components/popup_detail_title.dart';

class PopupDetailPage extends StatefulWidget {
  const PopupDetailPage({Key? key});

  @override
  State<PopupDetailPage> createState() => _PopupDetailPageState();
}

class _PopupDetailPageState extends State<PopupDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4, // TabBar에 표시할 탭 수
      child: Scaffold(
        backgroundColor: Colors.white,
          body: Stack(
            children: [
              NestedScrollView(
                headerSliverBuilder: (context, _) {
                  return [
                    PopupDetailAppbar(screenHeight: screenHeight),
                    //PopupDetailTitle(),
                  ];
                },
                body: Column(
                  children: [
                    PopupDetailTabbar(),
                    Expanded(child: PopupDetailTabbarView())
                  ],
                ),
              ),
              //PopupDetailBottomButton(),
            ],
          )),
    );
  }
}
