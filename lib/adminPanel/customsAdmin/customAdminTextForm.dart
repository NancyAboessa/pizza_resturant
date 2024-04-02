import 'package:flutter/material.dart';
import 'package:pizza/cstoms/customs.dart';

class customTextFormFieldWithBorder extends StatelessWidget {
  customTextFormFieldWithBorder({
    super.key,
    required this.user,
    required this.textval,
    required this.hinttext,
    required this.formkey,
  });

  final TextEditingController user;
  String textval;
  String hinttext;
    final GlobalKey<FormState> formkey;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 5, right: 10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black38),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: TextFormField(
          
          key: formkey,
          decoration: InputDecoration(
              hintText: hinttext, hintStyle: AppWidget.lightTextStyle(),
              border: InputBorder.none,
              ),
          controller: user,
          validator: (Value) {
            if (Value == null || Value.isEmpty) {
              return textval;
            }
          },
        ),
      ),
    );
  }
}
