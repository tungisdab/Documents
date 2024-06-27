import 'package:bloc_1/test1/logic.dart';
import 'package:bloc_1/test1/logic2.dart';
import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  late Logic logic;
  late Logic2 logic2;

  @override
  void initState() {
    logic = Logic();
    logic2 = Logic2();
    super.initState();
  }

  @override
  void dispose() {
    logic.controller.close();
    logic2.controller.close();
    super.dispose();
  }

  onPressed() {
    logic.increase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: StreamBuilder(
                stream: logic.stream,
                builder: (context, snapshot) => snapshot.hasData
                    ? Text(snapshot.data.toString())
                    : const CircularProgressIndicator()),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: onPressed, child: const Text('Click'))),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 500,
            child: TextFormField(
              onChanged: (value) {
                logic2.addValue(value);
              },
            ),
          ),
          StreamBuilder(
            stream: logic2.stream,
            builder: (context, snapshot) => snapshot.hasData
                ? snapshot.data != ""
                    ? Text('${snapshot.data}')
                    : const CircularProgressIndicator()
                : const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
