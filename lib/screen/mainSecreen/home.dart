import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/Home/feedsScreen.dart';
import 'package:instagram_fai/componen/Home/stories_data.dart';
import 'package:instagram_fai/componen/Home/storys.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final stories = StoriesDatabase.stories;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: [
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset('assets/icons/instagram.svg')),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 60),
              child: SvgPicture.asset('assets/icons/love.svg')),
          const SizedBox(
            width: 12,
          ),
          SvgPicture.asset('assets/icons/message.svg'),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Storys(stories: stories),
            const FeedScreen()
          ],
        ),
      ),
    ));
  }
}
