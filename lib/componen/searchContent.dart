import 'package:flutter/material.dart';
import 'package:instagram_fai/componen/feeds_data.dart';

class Searchcontent extends StatelessWidget {
  final FeedsData post;

  const Searchcontent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        color: Colors.grey[300],
        child: Image.asset(
          'assets/images/content/${post.postImage}',
          fit: BoxFit.cover,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
