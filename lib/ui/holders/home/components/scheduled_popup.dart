import 'package:flutter/cupertino.dart';
import 'package:team_project/ui/holders/home/components/schedulded_popup_frame.dart';
import 'package:team_project/ui/holders/home/components/scheduled_text.dart';
import 'nearby_text.dart';


class ScheduledPopup extends StatelessWidget {
  const ScheduledPopup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScheduledText(),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ScheduldedPopupFrame(
                      popupName: "어노브",
                      distance: 100,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://naverbooking-phinf.pstatic.net/20241029_10/1730189320644sTNDW_PNG/PC_02.png?type=a1000_60_sharpen'),
                  ScheduldedPopupFrame(
                      popupName: "잔나비x백세주막",
                      distance: 230,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://media.bunjang.co.kr/product/297860912_1_1730497876_w360.jpg'
                  ),
                  ScheduldedPopupFrame(
                      popupName: "다마고치",
                      distance: 352,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://pbs.twimg.com/media/GbmC_lObgAAPHcX.jpg'),
                  ScheduldedPopupFrame(
                      popupName: "아케인 시즌2",
                      distance: 56,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://cmsassets.rgpub.io/sanity/images/dsfx7636/news/cf2ccfc657525a41a3fc545dc4fe19a82ac04c04-1920x1080.png'
                  ),
                  ScheduldedPopupFrame(
                      popupName: "코리락쿠마 20주년",
                      distance: 123,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://cdn2.colley.kr/colley_post_4212_title_adabbac1-f027-4d3d-9b58-e93f050d670e.png'
                  ),
                  ScheduldedPopupFrame(
                      popupName: "차린건 쥐뿔도 없지만",
                      distance: 241,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://cdn.popga.co.kr/spot/993/main/0ce08254-88a5-49d1-b584-84db461847df_1730854345078.jpeg'
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
