import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/Home/stories_data.dart';

class Storys extends StatelessWidget {
  const Storys({super.key, required this.stories});
  final List<StoryData> stories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final story = stories[index];
            return Story(story: story);
          }),
    );
  }
}

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Column(
        children: [
          Stack(
            children: [
              story.isBFF
                  ? BestFriendForever(story: story)
                  : story.isViewed
                      ? ProfileStoryViewed(story: story)
                      : ProfileStoryNotViewed(story: story),
              Positioned(
                left: 0,
                // top: 0,
                right: 0,
                bottom: -1, // -5
                child: story.isLive
                    ? SvgPicture.asset('assets/icons/live.svg',
                        height: 19, width: 29)
                    : const SizedBox(),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(story.name),
        ],
      ),
    );
  }
}

class ProfileStoryNotViewed extends StatelessWidget {
  const ProfileStoryNotViewed({
    super.key,
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      // margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xFFD91A46),
            Color(0xFFFBAA47),
            Color(0xFFA60F93),
          ],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1000),
        ),
        padding: const EdgeInsets.all(2.5),
        child: ProfileImage(story: story),
      ),
    );
  }
}

class BestFriendForever extends StatelessWidget {
  const BestFriendForever({
    super.key,
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      // margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: const Color.fromRGBO(28, 209, 79, 1),
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1000),
        ),
        padding: const EdgeInsets.all(2.5),
        child: ProfileImage(story: story),
      ),
    );
  }
}

class ProfileStoryViewed extends StatelessWidget {
  const ProfileStoryViewed({
    super.key,
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      // margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: Colors.grey.shade400,
      ),
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1000),
        ),
        padding: const EdgeInsets.all(2.5),
        child: ProfileImage(story: story),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(1000),
        child: Image.asset(story.imageFileName));
  }
}
