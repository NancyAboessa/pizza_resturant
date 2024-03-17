import 'package:flutter/material.dart';

class MaterialCard extends StatelessWidget {
  const MaterialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: MediaQuery.of(context).padding.top/.2,
          left: MediaQuery.of(context).size.width/13,
          right:MediaQuery.of(context).size.width/13 ),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/6,),
          height: MediaQuery.of(context).size.height/4,
          width: MediaQuery.of(context).size.width/1.1,
        ),
      ),
    );
  }
}
