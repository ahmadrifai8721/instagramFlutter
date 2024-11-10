import 'package:flutter/material.dart';
import 'package:instagram_fai/componen/Home/feeds_data.dart';
import 'package:instagram_fai/componen/searchContent.dart';

class Profilepost extends StatefulWidget {
  const Profilepost({super.key});

  @override
  State<Profilepost> createState() => _ProfilepostState();
}

class _ProfilepostState extends State<Profilepost> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 0.5,
        mainAxisSpacing: 0.5,
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Searchcontent(post: posts[index]);
      },
    );
  }
}
