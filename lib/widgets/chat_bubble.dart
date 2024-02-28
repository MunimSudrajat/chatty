import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class BubbleChat extends StatelessWidget {
  final String text;
  final String time;
  final String imageUrl;

  BubbleChat(
    {
      this.imageUrl = "assets/images/friend1.png",
      this.text = "Lorem ipsum dolor",
      this.time = "22:11"});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          height: 72,
          padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
          decoration: BoxDecoration(
            color: darkWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
                SizedBox(
                  height: 5,
                ),
                Text(time),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
