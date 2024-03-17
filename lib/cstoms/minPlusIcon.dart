import 'package:flutter/material.dart';

class minPlusButtom extends StatelessWidget {
   minPlusButtom({
    super.key,
     required this.icon,
      required this.size
  });
IconData icon;
double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){}, icon:Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: Icon( icon,color: Colors.white,size: size,),
        )));
  }
}
