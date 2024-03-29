import 'package:comento_assignment/utils/comento_font.dart';
import 'package:flutter/material.dart';

class FeedCheckboxTile extends StatefulWidget implements Comparable<FeedCheckboxTile>{
  bool isChecked;
  final String title;
  final void Function(bool? bool) onChanged;

  FeedCheckboxTile({Key? key, required this.isChecked, required this.title, required this.onChanged}) : super(key: key);

  @override
  State<FeedCheckboxTile> createState() => _FeedCheckboxTileState();

  @override
  int compareTo(other) {
    return title.compareTo(other.title);
  }
}

class _FeedCheckboxTileState extends State<FeedCheckboxTile> {
  final titleStyle = TextStyle(fontFamily: ComentoFont.SPOQA_HAN_SANS);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            children: [
              SizedBox( // for removing default margin of CheckBox
                width: 24,
                height: 24,
                child: Checkbox(
                    value: widget.isChecked, onChanged: (value){}),
              ),
              const SizedBox(width: 6,),
              Text(widget.title, style: titleStyle,),
            ],
          ),
        ),
        Positioned.fill(
          child: GestureDetector(
            key: const Key('FeedCheckboxTile_GestureDetector'),
            child: Container(color: Colors.transparent, ),
            onTap: (){
              setState(() {
                widget.isChecked = !widget.isChecked;
              });
              widget.onChanged(widget.isChecked);
            },
          ),
        )
      ],
    );
  }

}

