import 'package:flutter/material.dart';

class borderRadiusContainer extends StatelessWidget {
  const borderRadiusContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3,),
      decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20))
      ),
    );
  }
}
