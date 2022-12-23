import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/material.dart';

class FeedCheckboxTile extends StatefulWidget{
   bool isChecked;
  final String title;
  final void Function(bool? bool) onChanged;

  FeedCheckboxTile({Key? key, required this.isChecked, required this.title, required this.onChanged}) : super(key: key);

  @override
  State<FeedCheckboxTile> createState() => _FeedCheckboxTileState();

}

class _FeedCheckboxTileState extends State<FeedCheckboxTile> {
  final titleStyle = TextStyle(fontFamily: ComentoFont.SPOQA_HAN_SANS);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox( // for removing default margin of CheckBox
            width: 24,
            height: 24,
            child: Checkbox(
                value: widget.isChecked, onChanged: (value){
                  setState(() {
                    widget.isChecked = !widget.isChecked;
                  });
              widget.onChanged(value);
            }),
          ),
          const SizedBox(width: 6,),
          Text(widget.title, style: titleStyle,),
        ],
      ),
    );
  }
}

