import 'dart:async';

class Logic2 {
  StreamController<String> controller = StreamController<String>();
  Sink get sink => controller.sink;
  Stream get stream => controller.stream;

  addValue(String value) {
    sink.add(value);
  }

}