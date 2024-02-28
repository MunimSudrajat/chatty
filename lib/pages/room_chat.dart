// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bwa_chatty/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class RoomChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/group1.png",
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
                        "Jakarta Fair",
                        style: titleTextStyle,
                      ),
                      Text(
                        "14.209 members",
                        style: subtitleTextStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    "assets/images/call_btn.png",
                    width: 55,
                    height: 55,
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BubbleChat(
                        imageUrl: "assets/images/friends1.png",
                        text: "How are ya guys?",
                        time: "2:30",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BubbleChat(
                        imageUrl: "assets/images/friends3.png",
                        text: "Find here :P",
                        time: "3:11",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "Thinking about how to deal\n with this client from hell..."),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("22:08"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            "assets/images/friends4.png",
                            width: 40,
                            height: 40,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BubbleChat(
                        imageUrl: "assets/images/friends2.png",
                        text: "Love them",
                        time: "23:11",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      BubbleChat(
                        imageUrl: "assets/images/friends2.png",
                        text: "Love them",
                        time: "23:11",
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
                      Text(
                        "Type message",
                        style:
                            TextStyle(color: Color(0xff999999), fontSize: 16),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/btn_send.png",
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
