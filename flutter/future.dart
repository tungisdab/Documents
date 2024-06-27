import 'dart:async';

Future<void> asyncFunction() {
  return Future.delayed(Duration(seconds: 3), () => print('kq sau 3s'));
}

Future<String> asyncFunction1() async {
  var value = Completer<String>();
  Future.delayed(Duration(seconds: 3), () => value.complete('hello'));
  return value.future;
}

Future<String> exceptionFunction() {
  return Future.delayed(Duration(seconds: 3), () => throw Exception("ERROR"));
}

main() async {
  String text = 'Ta JIR';
  asyncFunction();
  // text = await asyncFunction1();
  print('waiting for 3s');
  print(text);
}