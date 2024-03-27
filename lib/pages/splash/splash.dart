import 'package:flutter/material.dart';
import 'package:pizza/Models/SplashModel.dart';

class onboard extends StatefulWidget {
  const onboard({super.key});

  @override
  State<onboard> createState() => _onboardState();
}
class _onboardState extends State<onboard> {

  int currentIndex=0;
  late PageController _controller;
@override
  void initState() {
  _controller=PageController(initialPage: 0);
    super.initState();
  }

  @override
void dispose(){
  _controller.dispose();
  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         PageView.builder(
           controller: _controller,
             itemCount:3,
             itemBuilder:(_,i){
               return Padding(padding: EdgeInsets.all(20),
                 child: Column(

                 ),
               );
             }
         ),
       ],
     ),
    );
  }
}
