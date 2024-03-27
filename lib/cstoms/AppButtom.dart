import 'package:flutter/material.dart';

class AppButtomm extends StatelessWidget {
   AppButtomm({
    super.key,
     required this.text
  });
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height/17, 
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: MaterialButton(onPressed: (){},
        child: Text(text,style:TextStyle(color: Colors.white,
            fontSize: 25
        ),),color: Colors.deepPurple,
      ),
    );
  }
}
