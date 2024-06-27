import 'dart:async';

main() async {
  // Stream streamIn = Stream.fromIterable(['1', '2', '3']);

  // StreamTransformer stringToInt =
  //     StreamTransformer.fromHandlers(handleData: ((data, sink) {
  //   sink.add(int.parse(data));
  // }));

  // Stream streamOut = streamIn.transform(stringToInt);

  // streamIn.listen((event) {
  //   print(event.toString() + ' is a ${event.runtimeType}');
  // });

  // streamOut.listen((event) {
  //   print(event.toString() + ' is a ${event.runtimeType}');
  // });

  Stream<int> sIn = Stream.fromIterable([1, 2, 3, 4, 5]);
  Stream sOut = sIn.where((event) => event % 2 == 0);
  sOut.listen((event) {
    print(event.toString());
  });

  StreamTransformer t =
      StreamTransformer.fromHandlers(handleData: (data, sink) {
    sink.add(data * 2);
    // if (data % 2 != 0) {
    //   sink.addError('odd');
    // }
  });

  var ans = 0;
  StreamTransformer<int, int> k = StreamTransformer.fromHandlers(handleData: (data, sink) {
    ans += data;
    sink.add(ans);
  });

  // Stream sOut1 = sIn.transform(k);
  // sOut1.listen((event) {
  //   print(event.toString());
  // });

  Stream sOut1 = sIn.transform(k);
  sOut1.listen((event) {
    
  }, onDone: () {
    print('SUM = $ans');
  }); // print tong cuoi


  // Stream sOut2 = sIn.transform(t);
  // sOut2.listen((event) {
  //   print(event.toString() + "k");
  // });
}
