import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/models/ads_list.dart';


class FeedAdvertiseItemCard extends StatelessWidget {
  FeedAdvertiseItemCard({Key? key, required this.adsData, required this.onTap}) : super(key: key);

  final AdsData? adsData;
  final VoidCallback onTap;

  final sponsoredStyle = TextStyle(color: const Color(0xffADB5BD), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 13);
  final titleStyle = TextStyle(color: const Color(0xff282C30), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w700, fontSize: 18);
  final contentStyle = TextStyle(color: const Color(0xff495057), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 16);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //user id section
                Text('Sponsord', style: sponsoredStyle,),
                const SizedBox(height: 19,),
                //TODO('Satoshi'): 광고이미지 넣기
                AspectRatio(aspectRatio: 16/10, child: Container(color: const Color(0xffE1E4E7),),),
                const SizedBox(height: 19,),
                //title section
                Text(adsData?.title.toString() ?? 'title', maxLines: 2, overflow: TextOverflow.ellipsis, style: titleStyle,),
                const SizedBox(height: 12,),
                //content section
                Text(adsData?.contents.toString() ?? 'contents', maxLines: 2, overflow: TextOverflow.ellipsis, style: contentStyle,),
              ],
            ),
          ),
        ),
          Container(height: 10, color: CupertinoColors.systemGrey6,),
        ]
    );
  }
}
