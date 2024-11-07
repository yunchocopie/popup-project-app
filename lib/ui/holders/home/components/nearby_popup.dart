import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nearby_me.dart';
import 'nearby_text.dart';


class NearbyPopup extends StatelessWidget {
  const NearbyPopup({
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
            NearbyText(),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NearbyMe(
                      popupName: "취 성수",
                      distance: 100,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fc6u6cO%2FbtsINYeGbk8%2FNMB3NKOaKcDnsyweoqxonK%2Fimg.png'),
                  NearbyMe(
                      popupName: "스파오 푸퍼랜드",
                      distance: 230,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://scontent-ssn1-1.xx.fbcdn.net/v/t51.75761-15/464578392_18040077860473503_1153838545802389327_n.jpg?stp=dst-jpg_p960x960&_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=p2LzmUmqgr8Q7kNvgGt8OVA&_nc_zt=23&_nc_ht=scontent-ssn1-1.xx&_nc_gid=Ay0eBCILb8JHFBOuBao7kSS&oh=00_AYC9VqYOeeYRbTATJ1wVZdOKnjULKn7TOLkLuAVQavHSfw&oe=67327211'),
                  NearbyMe(
                      popupName: "쓰리타임즈",
                      distance: 352,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://mblogthumb-phinf.pstatic.net/MjAyMzA5MTFfMjI4/MDAxNjk0NDIxMDcxOTkx.UulAE5BLjpsgbtX1Sn38LXG4V5VNz-DNW8n8EkDLCMsg.gJesSWkTKtjvjcqG38R8-vN3PhsCwbUUKwuYs630hy4g.JPEG.shmwlals/output_482250711.jpg?type=w800'),
                  NearbyMe(
                      popupName: "라익디스",
                      distance: 56,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://cdn.imweb.me/upload/S202009292a824c25037d6/6ed867bf53d4a.png'),
                  NearbyMe(
                      popupName: "제로이드x올리브영",
                      distance: 123,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://cdn.smarttoday.co.kr/news/photo/202411/63299_56930_3432.jpg'),
                  NearbyMe(
                      popupName: "인생네컷",
                      distance: 241,
                      iconData: CupertinoIcons.location_solid,
                      imageUrl:
                      'https://pimg.mk.co.kr/news/cms/202410/29/news-p.v1.20241029.25fc8e1ccba642e182c04eabde859393_R.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
