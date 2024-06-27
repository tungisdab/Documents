import 'dart:async';

class Logic {
  StreamController controller; // điểu khiển luồng stream
  Sink get sink => controller.sink; // getter data vào
  Stream get stream => controller.stream; // getter stream ra

  // constructor. khởi tạo controller, ko để controller rỗng
  Logic(this.controller) {
    
  }

  addValue(String value) {
    sink.add(value);
  }

  printValue() {
    stream.listen((event) {
      print(event.toString());
    });
  }

}

class Logic2 {
  Logic logic;  
  Logic2(this.logic);

  addValue(String value) {
    logic.sink.add(value);
  }

  printValue() {
    logic.stream.listen((event) {
      print(event.toString());
    });
  }
}

main() {
  // StreamController controller = StreamController();
  // Logic logic = Logic(controller);
  // logic.addValue('value1');
  // logic.addValue('value2');
  // logic.addValue('value3');
  // logic.printValue();
  // controller.close();

  // StreamController stream2 = StreamController();
  // StreamController controller = StreamController();
  // Logic logic = Logic(controller);
  // stream2.addStream(logic.stream);
  // logic.addValue('value1');
  // logic.addValue('value2');
  // stream2.stream.listen((event) {
  //   print(event.toString());
  // });
  // controller.close();

  StreamController controller = StreamController();
  Logic logic = Logic(controller);
  Logic2 logic2 = Logic2(logic);
  logic2.addValue('value1');
  logic2.printValue();
  controller.close();
}