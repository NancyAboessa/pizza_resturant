// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pizza/cstoms/customs.dart';

class wallet extends StatelessWidget {
  const wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wallet',
        style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),)),
            elevation: 2.5,
            backgroundColor: Colors.white,
      ),
      body: Column(children: [
             Row(
              children: [
              ],
             )
      ],),
    );
  }
}
