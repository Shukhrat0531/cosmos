part of 'auth_bloc.dart';


abstract class AuthEvent {}

class RegisterUser extends AuthEvent {
  final String phone;
  final String name;
  final String surname;
  final String email;
  final String gender;
  final bool termsAndCondition;

  RegisterUser(this.phone, this.name, this.surname, this.email, this.gender,
      this.termsAndCondition);
}

class LoginUser extends AuthEvent {
  final String phone;
  LoginUser(this.phone);
}

class SendSms extends AuthEvent {
  final String phone;
  final String code;
  final String smsFor;
  SendSms(this.phone, this.code, this.smsFor);
}
