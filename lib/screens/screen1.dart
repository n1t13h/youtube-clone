import 'package:flutter/material.dart';
import 'package:flutube/flutube.dart';
import 'package:youtube_clone/videoInfo.dart';
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final flutubePlayer = FluTube(
  'https://www.youtube.com/watch?v=frEG8f0Aa1c',
  aspectRatio: 16 / 9,
  autoInitialize: true,
  showControls: false,
  showThumb: true,
  onVideoStart: () {},
  onVideoEnd: () {},
);
  @override
  Widget build(BuildContext context) {
    return VideoFeed();
  }
}