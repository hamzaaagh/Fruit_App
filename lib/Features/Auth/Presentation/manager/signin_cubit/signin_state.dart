import 'package:fruit_app/Features/Auth/domain/entities/user_entity.dart';

sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity user;
  SigninSuccess({required this.user});
}

final class SigninFailure extends SigninState {
  final String message;
  SigninFailure({required this.message});
}
