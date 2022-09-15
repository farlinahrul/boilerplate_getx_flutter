import 'package:equatable/equatable.dart';
import 'package:boilerplate_getx_flutter/model/user.dart';

enum AppType { INITIAL, UNAUTHENTICATED, LOAD, AUTHENTICATED }

class AuthState extends Equatable {
  final User? user;
  final AppType appStatus;

  const AuthState({this.user, this.appStatus = AppType.INITIAL});

  AuthState copyWith({
    User? user,
    AppType? appStatus,
  }) {
    return AuthState(
      user: user ?? this.user,
      appStatus: appStatus ?? this.appStatus,
    );
  }

  @override
  List<Object?> get props => [user, appStatus];
}
