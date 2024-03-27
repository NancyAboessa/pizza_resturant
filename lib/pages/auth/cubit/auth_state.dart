part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class UserState extends AuthState{}
class CreateUserSuceess extends AuthState{}
class SigninSucess extends AuthState{}