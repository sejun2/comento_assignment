import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/material.dart';

class FeedSubmitButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;

  final titleStyle = TextStyle(fontSize: 16, fontFamily: ComentoFont.SPOQA_HAN_SANS,color: Colors.white);

  FeedSubmitButton({Key? key, required this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: const BoxDecoration(
          color: Color(0xff2A7DE1),
          borderRadius:  BorderRadius.all(Radius.circular(3)),
        ),
        child: Text(title, style: titleStyle,),
      ),
    );
  }
}
