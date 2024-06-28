class LoginState {
  bool isLoading;
  bool isFailure;
  bool isSuccess;
  LoginState(
      {required this.isLoading,
      required this.isFailure,
      required this.isSuccess});

  factory LoginState.initial() {
    return LoginState(
      isLoading: true,
      isFailure: false,
      isSuccess: false,
    );
  }

  factory LoginState.loading() {
    return LoginState(
      isLoading: true,
      isFailure: false,
      isSuccess: false,
    );
  }

  factory LoginState.failure() {
    return LoginState(
      isLoading: false,
      isFailure: true,
      isSuccess: false,
    );
  }
  
  factory LoginState.success() {
    return LoginState(
      isLoading: false,
      isFailure: false,
      isSuccess: true,
    );
  }
}
