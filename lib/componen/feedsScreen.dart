import 'package:flutter/material.dart';
import 'package:instagram_fai/componen/feeds_data.dart';
import 'package:instagram_fai/componen/post.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Post(post: posts[index]);
      },
    );
  }
}
