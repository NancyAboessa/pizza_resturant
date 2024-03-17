import 'package:flutter/material.dart';
import 'package:pizza/pages/details%20page/details%20Page.dart';

import 'customs.dart';

class verticalcard extends StatelessWidget {
  const verticalcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          elevation: 3.0,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 150,
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(
                  'assets/imeges/burger.jpg',
                  height: 90,fit: BoxFit.cover,width: 90,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('Cheese Burger',
                      style: AppWidget.boldTextStyle(),
                    ),
                    SizedBox(height: 20,),
                    Text('Fresh and tasty',
                      style: AppWidget.lightTextStyle(),),
                    SizedBox(height: 10,),
                    Text('20 USD   ',
                      style: AppWidget.boldTextStyle(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
