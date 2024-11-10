import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Profile(),
          ],
        ),
      ),
    ));
  }
}
