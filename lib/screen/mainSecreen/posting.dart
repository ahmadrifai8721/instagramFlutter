import 'package:flutter/material.dart';
import 'package:camerawesome/camerawesome_plugin.dart';

class Posting extends StatefulWidget {
  const Posting({super.key});

  @override
  State<Posting> createState() => _PostingState();
}

class _PostingState extends State<Posting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraAwesomeBuilder.awesome(
        saveConfig: SaveConfig.photoAndVideo(),
        onMediaTap: (mediaCapture) {},
      ),
    );
  }
}
