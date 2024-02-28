import 'package:bwa_chatty/pages/room_chat.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
          onPressed: () {
          },
          child: Icon(
            Icons.add,
            size: 28,
            color: whiteColor,
          )),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile1.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: warnaBiru,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Friends", style: titleTextStyle),
                      ChatTile(
                          imageUrl: 'assets/images/friends1.png',
                          name: 'Joshuer',
                          text: 'Sorry, you’re not my ty...',
                          time: "Now",
                          unread: true),
                      ChatTile(
                        imageUrl: 'assets/images/friends2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: "2:30",
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text("Groups", style: titleTextStyle),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakrta Fair',
                        text: 'Why does everyone ca...',
                        time: "11:11",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: "7:11",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: "7:11",
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
