import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_fai/route/names.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacementNamed(context, Screens.mainScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: SvgPicture.asset(
              'assets/logo/logo_color.svg',
              width: 75,
            ),
          ),
          Text(
            'from',
            style: TextStyle(color: Colors.blueGrey.shade700),
          ),
          Image.asset('assets/logo/meta_ig_logo.png'),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
