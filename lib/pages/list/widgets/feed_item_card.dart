import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/feed_category.dart';
import '../../../data/models/feed_list.dart';


class FeedItemCard extends StatelessWidget {
  FeedItemCard({Key? key, required this.feedData, required this.filterCategoryList, required this.onTap}) : super(key: key);

  List<CategoryBean?> filterCategoryList = [];
  final FeedData? feedData;
  final VoidCallback onTap;

  final categoryNameStyle = TextStyle(color: const Color(0xff7E848A), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 13);
  final contentIdStyle = TextStyle(color: const Color(0xffADB5BD), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 13);
  final userIdStyle = TextStyle(color: const Color(0xff495057), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 13);
  final titleStyle = TextStyle(color: const Color(0xff282C30), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w700, fontSize: 18);
  final contentStyle = TextStyle(color: const Color(0xff495057), fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, fontSize: 16);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoSection(),
            const Divider(height: 20, color: Color(0xffE1E4E7), ),
            //user id section
            Text(feedData?.userId.toString() ?? 'user_id', style: userIdStyle,),
            const SizedBox(height: 19,),
            //title section
            Text(feedData?.title.toString() ?? 'title', maxLines: 1, overflow: TextOverflow.ellipsis, style: titleStyle,),
            const SizedBox(height: 12,),
            //content section
            Text(feedData?.contents.toString() ?? 'contents', maxLines: 1, overflow: TextOverflow.ellipsis, style: contentStyle,),
          ],
        ),
      ),
    );
  }

  Row _buildInfoSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(_getCategoryNameById(feedData?.categoryId ?? -1) ?? 'category_name', style: categoryNameStyle,),
        Text(feedData?.id.toString() ?? 'content_id', style: contentIdStyle,),
      ],
    );
  }

  ///카테고리 id로 name을 찾는 함수
  String? _getCategoryNameById(int id){
    CategoryBean? categoryBean = filterCategoryList.firstWhere((element) => element?.id == id);
    return categoryBean?.name;
  }
}
