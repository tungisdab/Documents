import 'package:bloc_1/test2/login_bloc.dart';
import 'package:bloc_1/test2/login_event.dart';
import 'package:bloc_1/test2/login_state.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  LoginBloc bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: LoginState.initial(),
              stream: bloc.stream,
              builder: (context, snapshot) {
                return Column(
                  children: [
                    if (snapshot.data!.isLoading)
                     const  Center(child:  CircularProgressIndicator())
                    else if (snapshot.data!.isSuccess)
                     const Center(child:  Text('Sucessfully'))
                    else
                      const Center(child: Text('Failure'))
                  ],
                );
              }),
          ElevatedButton(
            onPressed: () {
              bloc.check(LoginEvent.login);
            },
            child: const Text('Check'),
          ),
        ],
      ),
    );
  }
}
