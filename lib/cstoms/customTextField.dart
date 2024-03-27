import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.email,
     required this.text,
  });

   TextEditingController email;
   GlobalKey<FormState> formState = GlobalKey();
 String text;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      child: TextFormField(
        controller: email,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.email,size: 30,),
          
        ),
      ),
    );
  }
}
