import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.email,
     required this.text,
  });

   TextEditingController email;
 String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: email,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(fontSize: 20),
        prefixIcon: Icon(Icons.email,size: 30,),

      ),
    );
  }
}
