import 'dart:async';

import 'package:bloc_1/test2/login_event.dart';
import 'package:bloc_1/test2/login_state.dart';

class LoginBloc {
  final _controller = StreamController<LoginState>();
  Sink get sink => _controller.sink;
  Stream<LoginState> get stream => _controller.stream;

  void check(LoginEvent event) async {
    switch (event) {
      case LoginEvent.login:
        sink.add(LoginState.loading());
        await Future.delayed(
            const Duration(seconds: 3), () => sink.add(LoginState.success()));
        await Future.delayed(
            const Duration(seconds: 3), () => sink.add(LoginState.failure()));
    }
  }

  void dispose() {
    _controller.close();
  }
}
