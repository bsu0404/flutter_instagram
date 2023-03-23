import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    //생성자
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  final String imageUrl;
  //전달받은 후에는 변하지 않음

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  //좋아요 여부
  bool isFavorite = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          widget.imageUrl,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                color: isFavorite ? Colors.pink : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
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
