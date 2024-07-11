part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

}

final class _AuthenticationStatusChanged extends AuthenticationEvent {
  const _AuthenticationStatusChanged(this.status);
  final AuthenticationStatus status;
}

final class AuthenticationLogoutRequested extends AuthenticationEvent {}