import 'package:flutter/material.dart';
import 'package:instagram_fai/componen/feeds_data.dart';
import 'package:instagram_fai/componen/post.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Post(post: posts[index]);
      },
    );
  }
}
