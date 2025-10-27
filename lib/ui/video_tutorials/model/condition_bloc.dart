import 'dart:async';

import 'package:ezwage/ui/video_tutorials/model/enum_condition_event.dart';

class ConditionBloc {
  final _eventController = StreamController<ConditionEvent>();
  Stream<ConditionEvent> get eventStream => _eventController.stream;
  Sink<ConditionEvent> get eventSink => _eventController.sink;
  final _conditionController = StreamController<bool>();
  Stream<bool> get condtionStream => _conditionController.stream;
  Sink<bool> get condtionSink => _conditionController.sink;
  bool currentCondition = false;
  ConditionBloc() {
    eventStream.listen((ConditionEvent event) {
      if (event == ConditionEvent.True) {
        currentCondition = true;
      } else if (event == ConditionEvent.False) {
        currentCondition = false;
      }
      condtionSink.add(currentCondition);
    });
  }
  void dispose() {
    _eventController.close();
    _conditionController.close();
  }
}
