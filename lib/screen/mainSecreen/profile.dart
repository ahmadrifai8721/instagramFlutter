import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/Profile/AccountData.dart';
import 'package:instagram_fai/componen/Profile/profilePost.dart';
import 'package:instagram_fai/componen/Profile/profileUser.dart';
import 'package:instagram_fai/componen/Profile/slidePanel.dart';
import 'package:sliding_up_panel2/sliding_up_panel2.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final PanelController _panelController = PanelController();

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
                    GestureDetector(
                      onTap: () {
                        if (_panelController.isPanelOpen) {
                          _panelController.close();
                        } else {
                          _panelController.open();
                        }
                      },
                      child: const Icon(Icons.arrow_drop_down),
                    )
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
      body: SlidingUpPanel(
        controller: _panelController,
        minHeight: 0,
        maxHeight: 200,
        margin: const EdgeInsets.all(5.0),
        color: Colors.transparent,
        backdropEnabled: true,
        isDraggable: false,
        header: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ForceDraggableWidget(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 35,
                            height: 5,
                            decoration: const BoxDecoration(
                                color: Colors.white54,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        panelBuilder: () {
          final accounts = AccountsDatabase.Accounts;
          return Container(
              decoration: const BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [
                    Color(0xFFadc1e4),
                    Color(0xFFf0c6de),
                  ],
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                  child: Slidepanel(
                    accounts: accounts,
                  )));
        },
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
                            icon: SvgPicture.asset(
                                'assets/icons/profilePost.svg')),
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
                                      fontSize: 64,
                                      fontWeight: FontWeight.bold),
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
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
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
      ),
    ));
  }
}
