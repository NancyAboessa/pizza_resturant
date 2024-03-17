import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza/cstoms/customs.dart';

import '../../cstoms/AppButtom.dart';
import '../../cstoms/MaterialCard.dart';
import '../../cstoms/borderRadiusContainer.dart';
import '../../cstoms/customTextField.dart';
import '../../cstoms/purpleContainer.dart';

class Login extends StatelessWidget {
   Login({super.key});
TextEditingController email =TextEditingController();
   TextEditingController password =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            purpleContainer(),
            borderRadiusContainer(),
            Padding(
              padding:  EdgeInsets.all( MediaQuery.of(context).size.width/3.5),
              child: Text("PIZZ ETA",style:AppWidget.BigHeaderStyle(),)),
            MaterialCard(),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top/.2,
                  left: MediaQuery.of(context).size.width/10,
                  right:MediaQuery.of(context).size.width/10,
              ),
              child: CustomTextField(email: email, text: 'Email',),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/3,
                left: MediaQuery.of(context).size.width/10,
                right:MediaQuery.of(context).size.width/10,
              ),
              child:CustomTextField(email: password, text: 'Password',),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/2.5,
                left: MediaQuery.of(context).size.width/3.02,
              ),
              child: TextButton(onPressed: (){},
                  child: Text("Forget Password?",
              style: AppWidget.boldTextStyle(),
              )),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/1.8,
                left: MediaQuery.of(context).size.width/4,
                right:MediaQuery.of(context).size.width/4,
              ),
              child: AppButtomm(text: 'Login',),
            ),
            Padding(
              padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height/1.4,
                left: MediaQuery.of(context).size.width/12,
              ),
              child: TextButton(onPressed: (){},
                  child: Text("Don`t have an account? Sign up",
                    style: AppWidget.boldTextStyle(),
                  )),
            ),
          ],
        ),
      ),
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