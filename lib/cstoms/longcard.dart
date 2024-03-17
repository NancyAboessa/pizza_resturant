import 'package:flutter/material.dart';

import 'customs.dart';

class card extends StatelessWidget {
  const card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Material(
        elevation: 3.0,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 100,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset(
                'assets/imeges/burger.jpg',
                height: 120,fit: BoxFit.cover,width: 150,
              ),
              SizedBox(height: 20,),
              Text('Cheese Burger',
                style: AppWidget.boldTextStyle(),
              ),
              SizedBox(width: 20,),
              Text('Fresh and tasty',
                style: AppWidget.lightTextStyle(),),
              SizedBox(height: 10,),
              Text('20 USD   ',
                style: AppWidget.boldTextStyle(),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
