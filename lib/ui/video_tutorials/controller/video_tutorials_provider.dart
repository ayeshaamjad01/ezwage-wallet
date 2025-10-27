import 'package:flutter/material.dart';

class VideoTutorialsProvider extends ChangeNotifier {
  // var playVideosList = [];
  // generatePlayVideosList(int countVideos) {
  //   for (int i = 0; i < countVideos; i++) {
  //     playVideosList.add(false);
  //   }
  // }

  // videoStatus(int index, bool value) {
  //   for (int i = 0; i < playVideosList.length; i++) {
  //     if (index == i) {
  //       playVideosList[i] = value;
  //     } else {
  //       playVideosList[i] = false;
  //     }
  //   }

  //   notifyListeners();
  // }
  bool playVideo = false;
  videoStatus(bool value) {
    playVideo = value;
    notifyListeners();
  }
}
