import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/screen/mainSecreen/home.dart';
import 'package:instagram_fai/screen/mainSecreen/posting.dart';
import 'package:instagram_fai/screen/mainSecreen/profile.dart';
import 'package:instagram_fai/screen/mainSecreen/reels.dart';
import 'package:instagram_fai/screen/mainSecreen/search.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = selectMenu.home)),
                icon: selectedIndex == selectMenu.home
                    ? SvgPicture.asset('assets/icons/homeAct.svg')
                    : SvgPicture.asset('assets/icons/home.svg')),
            IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = selectMenu.search)),
                icon: selectedIndex == selectMenu.search
                    ? SvgPicture.asset('assets/icons/searchAct.svg')
                    : SvgPicture.asset('assets/icons/search.svg')),
            IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = selectMenu.posting)),
                icon: SvgPicture.asset('assets/icons/posting.svg')),
            IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = selectMenu.reels)),
                icon: selectedIndex == selectMenu.reels
                    ? SvgPicture.asset('assets/icons/reelsAct.svg')
                    : SvgPicture.asset('assets/icons/reels.svg')),
            IconButton(
                onPressed: (() =>
                    setState(() => selectedIndex = selectMenu.profile)),
                icon: selectedIndex == selectMenu.profile
                    ? Container(
                        width: 30,
                        height: 30,
                        // margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1000),
                            color: Colors.black),
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          padding: const EdgeInsets.all(2.5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset(
                                  'assets/images/profile/rifaiPP.JPG')),
                        ),
                      )
                    : Container(
                        width: 30,
                        height: 30,
                        // margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          padding: const EdgeInsets.all(2.5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(1000),
                              child: Image.asset(
                                  'assets/images/profile/rifaiPP.JPG')),
                        ),
                      )),
          ],
        ),
      ),
      body: SafeArea(
          child: IndexedStack(
        index: selectedIndex,
        children: const [Home(), Search(), Posting(), Reels(), Profile()],
      )),
    );
  }
}

class selectMenu {
  selectMenu._();
  static const int home = 0;
  static const int search = 1;
  static const int posting = 2;
  static const int reels = 3;
  static const int profile = 4;
}
