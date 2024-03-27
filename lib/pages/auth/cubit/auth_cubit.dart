import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  String? email;
  String? password;
  bool emailVerified = false;
  User? user;
  String name = "";
  UserState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    emit(UserState());
  }

  createUserWithEmailandPassword(email, password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    
    emit(CreateUserSuceess());
  }

  SigninWithEmailAndPassWord(email, pass) async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: pass);
    emit(SigninSucess());
  }

  ResetPass(email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
