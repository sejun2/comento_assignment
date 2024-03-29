import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/material.dart';

class FeedSquareButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  final borderRadius = const BorderRadius.all(Radius.circular(3));
  final titleStyle = TextStyle(fontFamily: ComentoFont.SPOQA_HAN_SANS, color: const Color(0xffADB5BD), fontSize: 13);

  EdgeInsets? margin;
  EdgeInsets? padding;

  FeedSquareButton({Key? key, required this.title, required this.onTap, this.margin = const EdgeInsets.only(left: 10), this.padding = const EdgeInsets.symmetric(vertical: 4, horizontal: 14)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: Border.all(
            color: const Color(0xffE1E4E7),
            width: 1
          ),
        ),
        child: Text(title, style: titleStyle,),
      ),
    );
  }
}
