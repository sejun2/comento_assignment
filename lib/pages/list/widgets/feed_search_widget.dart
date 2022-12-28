import 'package:flutter/material.dart';

class FeedSearchWidget extends StatefulWidget {
  const FeedSearchWidget({Key? key, required this.textEditingController, required this.focusNode}) : super(key: key);

  final TextEditingController textEditingController;
  final FocusNode focusNode;
  @override
  State<FeedSearchWidget> createState() => _FeedSearchWidgetState();
}

class _FeedSearchWidgetState extends State<FeedSearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white38),
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: TextField(
              focusNode: widget.focusNode,
              controller: widget.textEditingController,
              maxLines: 1,
              autofocus: false,
              decoration: const InputDecoration(
                hintText: '찾을 제목을 입력하세요',
                icon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  borderSide: BorderSide(
                    color: Colors.white38,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(
                      color: Colors.white38,
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide: BorderSide(
                      color: Colors.white38,
                    )
                ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      borderSide: BorderSide(
                        color: Colors.white38,
                      )
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
