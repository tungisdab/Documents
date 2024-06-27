import 'dart:async';

class Logic {
  StreamController controller = StreamController(); //tao controller
  Sink get sink => controller.sink; //tao sink
  Stream get stream => controller.stream; //tao stream
  
  int cnt = 0;
  increase() {
    cnt ++;
    sink.add(cnt);
  }
}