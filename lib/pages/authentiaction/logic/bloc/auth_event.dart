part of 'auth_bloc.dart';

abstract class AuthEvent {}

class RegisterUser extends AuthEvent {
  final String phone;
  final String name;
  final String surname;
  final String patronymic;
  final String year_of_birth;
  final String gender;
  final String? promo_code;
  final bool term_and_condition;

  RegisterUser({
    required this.phone,
    required  this.name,
    required  this.surname,
    required  this.patronymic,
    required  this.year_of_birth,
    required this.gender,
     this.promo_code,
    required this.term_and_condition});
}

class LoginUser extends AuthEvent {
  final String phone;
  LoginUser({ required this.phone, });
}

class SendSms extends AuthEvent {
  final String phone;
  final String code;
  final String smsFor;
  SendSms(this.phone, this.code, this.smsFor);
}
