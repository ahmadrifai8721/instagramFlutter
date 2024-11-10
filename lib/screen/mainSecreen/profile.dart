import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/Profile/profilePost.dart';
import 'package:instagram_fai/componen/Profile/profileUser.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/lock.svg',
                      color: Colors.black,
                      width: 24,
                      height: 24,
                      fit: BoxFit.scaleDown,
                    ),
                    const Text(
                      "ahmadrifai411",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                )),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 60),
              child: SvgPicture.asset('assets/icons/threads.svg',
                  color: Colors.black,
                  width: 24,
                  height: 24,
                  fit: BoxFit.scaleDown)),
          const SizedBox(
            width: 12,
          ),
          SvgPicture.asset('assets/icons/posting.svg'),
          const SizedBox(
            width: 12,
          ),
          SvgPicture.asset('assets/icons/setting.svg'),
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
            const Profileuser(),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Edit Profil",
                        style: TextStyle(color: Colors.black),
                      )),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Bagikan Profil",
                        style: TextStyle(color: Colors.black),
                      )),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black12,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: const Size(100, 40),
                      ),
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/icons/addUser.svg'),
                      label: const Text('')),
                ],
              ),
            ),
            DefaultTabController(
              length: 3, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                    tabs: [
                      Tab(
                          icon:
                              SvgPicture.asset('assets/icons/profilePost.svg')),
                      Tab(icon: SvgPicture.asset('assets/icons/reels.svg')),
                      Tab(icon: SvgPicture.asset('assets/icons/userTag.svg')),
                    ],
                    labelColor: Colors.black,
                  ),
                  SizedBox(
                    height: 300, // Set the height for the TabBarView
                    child: TabBarView(
                      children: [
                        const Profilepost(),
                        Center(
                            child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/reels.svg',
                                  width: 100, height: 100, fit: BoxFit.cover),
                              const Text(
                                "Reel",
                                style: TextStyle(
                                    fontSize: 64, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                        Center(
                            child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset('assets/icons/userTag.svg',
                                  width: 100, height: 100, fit: BoxFit.cover),
                              const Text(
                                "Minat ateman anda untuk tag anda",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
