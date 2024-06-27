main() async {
  // print("begin");
  // cntStream(10).listen((event) {
  //   print(event);
  // });

  // await for (int value in cntStream(10)){
  //   print(value.toString());
  // }
  // print("end");
  print(await sumStream(cntStream(10)));
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> cntStream(int value) async* {
  for (int i = 0; i < value; i++) {
    yield i; // trả về nhiều dữ liệu,
  }
}
