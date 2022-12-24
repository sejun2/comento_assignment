import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/ads_list.dart';


class FeedAdvertiseItemCard extends StatelessWidget {
  FeedAdvertiseItemCard({Key? key, required this.adsData, required this.onTap}) : super(key: key);

  final AdsData? adsData;
  final VoidCallback onTap;

  final sponsoredStyle = TextStyle(color: const Color(0xffADB5BD), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 13);
  final titleStyle = TextStyle(color: const Color(0xff282C30), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w700, fontSize: 18);
  final contentStyle = TextStyle(color: const Color(0xff495057), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 16);

  final imgBaseUrl = 'https://cdn.comento.kr/assignment/';

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
                Text('Sponsored', style: sponsoredStyle,),
                const SizedBox(height: 19,),
                if(adsData?.img?.isNotEmpty ?? false)
                Image.network(
                    imgBaseUrl+(adsData?.img.toString() ?? ''),
                    loadingBuilder: (context, child, loadingProgress) {
                      if(loadingProgress != null) return const Center(child: CircularProgressIndicator(),);
                      return child;
                      },
                    errorBuilder: (context, error, stackTrace) {
                  return Container(color: const Color(0xffE1E4E7),child: Center(child: Text('이미지를 불러올 수 없습니다', style: TextStyle(fontFamily: ComentoFont.SPOQA_HAN_SANS, fontSize: 16),)),);
                }),
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
