import 'package:flutter/material.dart';
import 'package:instagram_fai/screen/mainSecreen/mainScreen.dart';
import 'package:instagram_fai/screen/splash.dart';

import 'names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Screens.root: (context) => const Splash(),
  Screens.mainScreen: (context) => const mainScreen(),
};
