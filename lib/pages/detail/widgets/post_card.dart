import 'package:comento_assignment/data/models/feed_details.dart';
import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final FeedDetails? feedDetails;

  final titleStyle = TextStyle(fontSize: 18, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w700, color: const Color(0xff282C30));
  final contentStyle = TextStyle(fontSize: 16, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, color: const Color(0xff282C30));
  final dateStyle = TextStyle(fontSize: 13, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, color: const Color(0xffADB5BD));

  final defaultPadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  PostCard({Key? key, required this.feedDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: const Color(0xff2A7DE1), height: 1, margin: const EdgeInsets.only(bottom: 22),),
          Text(feedDetails?.data?.title.toString() ?? 'Title', style: titleStyle,),
          const SizedBox(height: 20,),
          Text(feedDetails?.data?.contents.toString() ?? 'Content', style: contentStyle,),
          const SizedBox(height: 20,),
          Text(_processDateTime(DateTime.tryParse(feedDetails?.data?.createdAt ?? '')), style: dateStyle,),
          Container(color: const Color(0xff2A7DE1), height: 1, margin: const EdgeInsets.only(top: 22),),
        ],
      ),
    );
  }

  String _processDateTime(DateTime? dateTime){
    return 'created_at(${dateTime?.year}-${dateTime?.month}-${dateTime?.day})';
  }
}
