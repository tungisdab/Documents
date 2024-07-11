import 'dart:async';

enum AuthenticationStatus { authenticated, unauthenticated, unknown }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> Login({
    required String username,
    required String password,
  }) async {
    await Future.delayed(Duration(seconds: 1),
        () => _controller.add(AuthenticationStatus.authenticated));
  }

  void Logout() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() {
    _controller.close();
  }
}
