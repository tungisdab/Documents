import 'package:bloc_1/counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text('$state');
          },
        ),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add)),
          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove)),
        ],
      ),
    );
  }
}
