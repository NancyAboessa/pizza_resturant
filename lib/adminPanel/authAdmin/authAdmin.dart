import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza/adminPanel/customsAdmin/customAdminTextForm.dart';
import 'package:pizza/cstoms/AppButtom.dart';
import 'package:pizza/cstoms/borderRadiusContainer.dart';
import 'package:pizza/cstoms/customs.dart';
import 'package:pizza/cstoms/purpleContainer.dart';

class LoginAdmin extends StatelessWidget {
  LoginAdmin({super.key});
  TextEditingController user = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
    TextEditingController email = TextEditingController();
  TextEditingController pasword = TextEditingController();
  final GlobalKey<FormState> emailformkey = GlobalKey<FormState>();
  final GlobalKey<FormState> passformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const purpleContainer(),
            const borderRadiusContainer(),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Text(
                'Welcome To Admin Panal',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 330,
                  ),
                  customTextFormFieldWithBorder(user: user,textval:"please Enter your Name" ,
                  hinttext: 'User Name', formkey: _formkey,),
                  SizedBox(height: 50,),
                  customTextFormFieldWithBorder(user: email,textval:"please Enter your email" ,
                  hinttext: 'email',formkey: emailformkey,),
                   SizedBox(height: 50,),
                   customTextFormFieldWithBorder(user: pasword,textval:"please Enter your Password" ,
                  hinttext: 'Password',formkey: passformkey,),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: (){},
                    child: AppButtomm(text: "Register",))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

