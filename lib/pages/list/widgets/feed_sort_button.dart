import 'package:flutter/material.dart';

class FeedSortButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isActive;
  final String title;

  final activeButtonColor = const Color(0xff2A7DE1);
  final inactiveButtonColor = const Color(0xffE1E4E7);

  final activeTextColor = const Color(0xff495057);
  final inactiveTextColor = const Color(0xffADB5BD);

  final defaultPadding = const EdgeInsets.only(right: 8);

  const FeedSortButton({Key? key, required this.onTap, required this.isActive, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: isActive ? activeButtonColor : inactiveButtonColor,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
            ),
            const SizedBox(width: 4,),
            Text(title, style: TextStyle(color: isActive ? activeTextColor : inactiveTextColor),)
          ],
        ),
      ),
    );
  }
}
