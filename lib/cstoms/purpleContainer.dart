import 'package:flutter/material.dart';

class purpleContainer extends StatelessWidget {
  const purpleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:
              [
                Colors.deepPurple,
                Colors.deepPurple,
              ])
        //borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
