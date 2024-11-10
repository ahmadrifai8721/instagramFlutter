import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile/rifaiPP.JPG'),
            ),
          // ),
          // const SizedBox(height: 16),
          // const Center(
          //   child: Text(
          //     'Ahmad Rifai',
          //     style: TextStyle(
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 8),
          // const Center(
          //   child: Text(
          //     '@_ahmadrifai1',
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          // const SizedBox(height: 16),
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Column(
          //       children: [
          //         Text(
          //           '3',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         SizedBox(height: 4),
          //         Text(
          //           'Posts',
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: Colors.grey,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           '710',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         SizedBox(height: 4),
          //         Text(
          //           'Followers',
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: Colors.grey,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Text(
          //           '3800',
          //           style: TextStyle(
          //             fontSize: 18,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         SizedBox(height: 4),
          //         Text(
          //           'Following',
          //           style: TextStyle(
          //             fontSize: 16,
          //             color: Colors.grey,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 16),
          // Center(
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: const Text('Edit Profile'),
          //   ),
          ),
        ],
      ),
    );
  }
}
