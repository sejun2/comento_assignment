import 'package:comento_assignment/data/models/feed_details.dart';
import 'package:flutter/material.dart';

import '../../../utils/comento_font.dart';

class ReplyCard extends StatelessWidget {

  final FeedDetailReply? feedDetailReply;

  final usernameStyle = TextStyle(fontSize: 16, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, color: const Color(0xff7E848A));
  final dateStyle = TextStyle(fontSize: 13, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, color: const Color(0xffADB5BD));
  final contentStyle = TextStyle(fontSize: 16, fontFamily: ComentoFont.SPOQA_HAN_SANS, fontWeight: FontWeight.w500, color: const Color(0xff282C30));

  final defaultPadding = const EdgeInsets.symmetric(vertical: 12, horizontal: 16);
  ReplyCard({Key? key, required this.feedDetailReply}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: const Color(0xffE1E4E7), height: 1, margin: const EdgeInsets.only(bottom: 22),),
          Text(feedDetailReply?.user?.name ?? 'user_name', style: usernameStyle ,),
          Container(color: const Color(0xffE1E4E7), height: 1, margin: const EdgeInsets.only(top: 12), ),
          const SizedBox(height: 20,),
          Text(feedDetailReply?.contents ?? 'contents', style: contentStyle, ),
          const SizedBox(height: 20,),
          Text(_processDateTime(DateTime.tryParse(feedDetailReply?.createdAt ?? '')), style: dateStyle,),
          Container(color: const Color(0xffE1E4E7), height: 1, margin: const EdgeInsets.only(top: 22),),
        ],
      ),
    );
  }

  String _processDateTime(DateTime? dateTime){
    return 'created_at(${dateTime?.year}-${dateTime?.month}-${dateTime?.day})';
  }
}
