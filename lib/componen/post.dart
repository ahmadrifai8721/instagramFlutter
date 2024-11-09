import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/feeds_data.dart';

class Post extends StatelessWidget {
  final FeedsData post;

  Post({required this.post});

  @override
  Widget build(BuildContext context) {
    int randomInt = Random().nextInt(1000) + 1000;
    double c_width = MediaQuery.of(context).size.width * 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/content/' + post.postImage),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/profile/${post.userImage}'),
                ),
                title: Text(post.username),
              ),
              const SizedBox(
                height: 500,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/love.svg"),
            ),
            Text(
              randomInt.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/coment.svg"),
            ),
            Text(
              randomInt.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {},
                icon: Row(
                  children: [
                    SvgPicture.asset("assets/icons/share.svg"),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(left: 148),
                child: IconButton(
                    onPressed: () {},
                    icon: Row(
                      children: [
                        SvgPicture.asset("assets/icons/save.svg"),
                      ],
                    ))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 5.0),
          child: Wrap(
            verticalDirection: VerticalDirection.down,
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0,
            children: <Widget>[
              Text(
                post.username,
                textAlign: TextAlign.left,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(post.caption, textAlign: TextAlign.left),
            ],
          ),
        )
      ],
    );
  }
}
