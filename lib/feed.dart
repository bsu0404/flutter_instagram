import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
  }) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  //좋아요 여부
  bool isFavorate = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "https://cdn2.thecatapi.com/images/kat_7kqBi.png",
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.black,
              ),
              onPressed: () {
                // print("cliiked" as num);
              },
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble,
                  color: Colors.black,
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.black,
                ))
          ],
        ),
        //좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "50 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("내 고양이는 너무너무 귀여워, 나는 고양이한테 오리를 올렸어"),
        ),

        //날짜
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("March 22",
                style: TextStyle(
                  color: Colors.grey,
                )))
      ],
    );
  }
}
