import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {this.imageUrl = "assets/images/friends1.png",
      this.name = "Munim",
      this.text = "Lorem ipssum doro sit...",
      this.time = "20:15",
      this.unread = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(text,
                  style: unread
                      ? subtitleTextStyle.copyWith(color: blackColor)
                      : subtitleTextStyle),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: TextStyle(color: greyColor),
          )
        ],
      ),
    );
  }
}
