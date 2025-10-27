import 'package:ezwage/global/utils/colors.dart';
import 'package:ezwage/global/utils/set_logout_time.dart';
import 'package:ezwage/ui/video_tutorials/model/condition_bloc.dart';
import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// ignore: must_be_immutable
class YoutubeVideoView extends StatefulWidget {
  var selectedVideoId;
  YoutubeVideoView(this.selectedVideoId);
  @override
  State<YoutubeVideoView> createState() => _YoutubeVideoViewState();
}

class _YoutubeVideoViewState extends State<YoutubeVideoView> {
  late YoutubePlayerController _ytbPlayerController;
  ConditionBloc _conditionBloc = ConditionBloc();
  @override
  void initState() {
    super.initState();
    _ytbPlayerController = YoutubePlayerController(
      // initialVideoId: widget.selectedVideoId,
      params: YoutubePlayerParams(
          // ignore: deprecated_member_use
          showControls: true,
          showFullscreenButton: true,
          strictRelatedVideos: true,
          showVideoAnnotations: false),
    );
    _ytbPlayerController.cueVideoById(videoId: widget.selectedVideoId);
    _ytbPlayerController.listen((event) {
      if (_ytbPlayerController.value.playerState == PlayerState.playing) {
        _conditionBloc.eventSink.add(ConditionEvent.True);
        _videoIsPlaying = true;
        setLogoutTime = DateTime.now();
      } else {
        _videoIsPlaying = false;
        _conditionBloc.eventSink.add(ConditionEvent.False);
      }
    });
  }

  bool _videoIsPlaying = false;
  @override
  Widget build(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 60.0),
          child: SizedBox(
            height: shortestSide < 600 ? 200 : 600,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // ignore: deprecated_member_use
              child: YoutubePlayer(
                controller: _ytbPlayerController,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: shortestSide > 600 ? 1.sp : 10,
          left: 0,
          right: shortestSide < 600 ? -220 : -600,
          child: GestureDetector(
            onTap: () {
              if (_videoIsPlaying == true) {
                _ytbPlayerController.pauseVideo();
                _videoIsPlaying = false;
              } else {
                _ytbPlayerController.playVideo();
                _videoIsPlaying = true;
              }
            },
            child: StreamBuilder<Object>(
                stream: _conditionBloc.condtionStream,
                builder: (context, snapshot) {
                  return Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: roundbuttonColor),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: shortestSide > 600
                              ? Icon(
                                  _videoIsPlaying == false
                                      ? Icons.play_arrow
                                      : Icons.pause,
                                  color: Colors.white,
                                  size: 20.sp,
                                )
                              : Icon(
                                  _videoIsPlaying == false
                                      ? Icons.play_arrow
                                      : Icons.pause,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
