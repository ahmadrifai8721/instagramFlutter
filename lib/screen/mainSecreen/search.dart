import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/componen/Home/feeds_data.dart';
import 'package:instagram_fai/componen/searchContent.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black54,
        elevation: 1,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                  color: const Color.fromARGB(255, 107, 107, 107),
                  child: TextField(
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        hintText: "Search...",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: SvgPicture.asset(
                          "assets/icons/searchAct.svg",
                          width: 5,
                          height: 5,
                          fit: BoxFit.scaleDown,
                          color: Colors.white,
                        ),
                        prefixIconColor: Colors.white,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  )),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.5,
          mainAxisSpacing: 0.5,
        ),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Searchcontent(post: posts[index]);
        },
      ),
    ));
  }
}
