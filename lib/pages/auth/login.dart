// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza/cstoms/customTextField.dart';
import 'package:pizza/cstoms/customs.dart';
import 'package:pizza/pages/auth/Sign%20up.dart';
import 'package:pizza/pages/home/buttom%20nav%20bar.dart';
import 'package:pizza/pages/home/home.dart';

import '../../cstoms/AppButtom.dart';
import '../../cstoms/MaterialCard.dart';
import '../../cstoms/borderRadiusContainer.dart';
import '../../cstoms/purpleContainer.dart';
import 'cubit/auth_cubit.dart';

class Login extends StatelessWidget {
  Login({super.key});

  late TextEditingController email = TextEditingController();

  late TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            child: Stack(
              children: [
                const purpleContainer(),
                const borderRadiusContainer(),
                Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 3.5),
                    child: Text(
                      "Sign In",
                      style: AppWidget.BigHeaderStyle(),
                    )),
                const MaterialCard(),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top / .2,
                    left: MediaQuery.of(context).size.width / 10,
                    right: MediaQuery.of(context).size.width / 10,
                  ),
                  child: CustomTextField(
                    email: email,
                    text: 'Email',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.5,
                    left: MediaQuery.of(context).size.width / 10,
                    right: MediaQuery.of(context).size.width / 10,
                  ),
                  child: CustomTextField(
                    email: password,
                    text: 'Password',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.1,
                    left: MediaQuery.of(context).size.width / 2.5,
                  ),
                  child: TextButton(
                      onPressed: () {
                        if (email.text == '') {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Email must not be empty')));
                        }else
                        cubit.ResetPass(email.text);
                      },
                      child: Text(
                        "Forget Password?",
                        style: AppWidget.boldTextStyle(),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.8,
                    left: MediaQuery.of(context).size.width / 4,
                    right: MediaQuery.of(context).size.width / 4,
                  ),
                  child: MaterialButton(
                    color: Colors.deepPurple,
                    minWidth: MediaQuery.of(context).size.width / 2,
                    onPressed: () {
                      cubit.SigninWithEmailAndPassWord(
                          email.text, password.text);
                      if (cubit.SigninWithEmailAndPassWord(
                              email.text, password.text) !=
                          null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => buttomnav()),
                        );
                      }
                      cubit.UserState();
                    },
                    child: Text("Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 1.4,
                    left: MediaQuery.of(context).size.width / 12,
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        "Don`t have an account? Sign up",
                        style: AppWidget.boldTextStyle(),
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//             Container(
//                height: MediaQuery.of(context).size.height/2,
//                width: MediaQuery.of(context).size.width/1.5,
//
//                child: Text('hhhhhhhhhh'),
//                decoration: BoxDecoration(color: Colors.white,
//                borderRadius: BorderRadius.circular(20)
//                ),
//              ),