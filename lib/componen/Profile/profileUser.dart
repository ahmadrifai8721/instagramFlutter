import 'package:flutter/material.dart';

class Profileuser extends StatefulWidget {
  const Profileuser({super.key});

  @override
  State<Profileuser> createState() => _ProfileuserState();
}

class _ProfileuserState extends State<Profileuser> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 75,
                  height: 75,
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
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(1000),
                        child:
                            Image.asset('assets/images/profile/rifaiPP.JPG')),
                  ),
                ),
                const Text(
                  "Ahmad Rifai",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 115,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  margin: const EdgeInsets.only(top: 5.0),
                  padding: const EdgeInsets.all(6.0),
                  child: const Text("@ahmadrifai411"),
                )
              ]),
          SizedBox(
            width: MediaQuery.of(context).size.width - 147,
            child: const Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Posts',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '710',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Followers',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        '3800',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Following',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
