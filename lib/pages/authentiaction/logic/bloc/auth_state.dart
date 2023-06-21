part of 'auth_bloc.dart';



abstract class AuthState {}

class AuthInitial extends AuthState {}

//Register
class RegisterLoading extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterFailed extends AuthState {
  final String? message;
  RegisterFailed(this.message);
}

//Login
class LoginLoading extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginFailed extends AuthState {
  final String? message;
  LoginFailed(this.message);
}

//SMS
class SmsLoading extends AuthState {}

class SmsSuccess extends AuthState {}

class SmsFailed extends AuthState {
  final String? message;
  SmsFailed(this.message);
}
