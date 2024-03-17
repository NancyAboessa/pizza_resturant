import 'package:flutter/material.dart';

class AppWidget{
  static boldTextStyle ()
  {
    return  TextStyle(
      fontFamily: 'Poppins-Bold.ttf',
      fontSize: 20,
      color: Colors.black,

    );
  }
  static HeaderTextStyle ()
  {
    return  TextStyle(
      fontFamily: 'Poppins-Bold.ttf',
      fontSize: 24,
      color: Colors.black,

    );
  }

  static lightTextStyle ()
  {
    return  TextStyle(
      fontSize: 14,
      color: Colors.black38,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins-Bold.ttf',
    );
  }

static BigHeaderStyle(){
    return  TextStyle(
        color: Colors.white,
        fontSize: 35,
        fontFamily:'Poppins-ThinItalic.ttf'
    );
}

}