import 'package:bloc/bloc.dart';
import 'package:bloc_1/counter_app/app.dart';
import 'package:bloc_1/counter_app/counter_observer.dart';
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bloc',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
//         useMaterial3: true,
//       ),
//       home: const Home2(),
//     );
//   }
// }