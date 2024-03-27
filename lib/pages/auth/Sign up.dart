import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza/pages/auth/cubit/auth_cubit.dart';
import 'package:pizza/pages/auth/login.dart';

import '../../cstoms/AppButtom.dart';
import '../../cstoms/MaterialCard.dart';
import '../../cstoms/borderRadiusContainer.dart';
import '../../cstoms/customTextField.dart';
import '../../cstoms/customs.dart';
import '../../cstoms/purpleContainer.dart';

class Register extends StatelessWidget {
  Register({super.key});
  late TextEditingController name = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var cubit = AuthCubit.get(context);
    return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return Scaffold(
        body: Container(
          child: Stack(
            children: [
              purpleContainer(),
              borderRadiusContainer(),
              Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 3),
                  child: Text(
                    "Sign UP",
                    style: AppWidget.BigHeaderStyle(),
                  )),
              MaterialCard(),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top / .2,
                  left: MediaQuery.of(context).size.width / 10,
                  right: MediaQuery.of(context).size.width / 10,
                ),
                child: CustomTextField(
                  email: name,
                  text: 'Name',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.7,
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
                  top: MediaQuery.of(context).size.height / 2.25,
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
                  top: MediaQuery.of(context).size.height / 1.8,
                  left: MediaQuery.of(context).size.width / 4,
                  right: MediaQuery.of(context).size.width / 4,
                ),
                child: GestureDetector(
                    onTap: () {
                      cubit.createUserWithEmailandPassword(
                          email.text, password.text);
                    },
                    child: AppButtomm(
                      text: 'Sign UP',
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.4,
                  left: MediaQuery.of(context).size.width / 12,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>Login()));
                    },
                    child: Text(
                      "Already Have an account Login ",
                      style: AppWidget.boldTextStyle(),
                    )),
              ),
            ],
          ),
        ),
      );
    });
  }
}
