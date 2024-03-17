import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza/cstoms/customs.dart';

import '../../cstoms/minPlusIcon.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset("assets/imeges/pizza.jpg",height: 350,),),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Italian Margreta Pizza ",style: AppWidget.boldTextStyle(),),
              SizedBox(width: 15,),
              minPlusButtom(icon: Icons.minimize,size: 15.5,),
              SizedBox(width: 5,),
              Text('1',style: AppWidget.lightTextStyle(),),
              minPlusButtom(icon: Icons.add,size: 22,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Our Favurate Order Its top Rated in our website Here You can Order Your favourate Pizza Our Favurate Order Its top Rated in our website ",
            style: AppWidget.lightTextStyle(),
              maxLines: 4,overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30,),
            Text("DElivery Time",style: AppWidget.boldTextStyle(),),
            SizedBox(width: 25,),
            Icon(Icons.alarm,color: Colors.grey,),
            SizedBox(width: 15,),
            Text("30 Min",style: AppWidget.HeaderTextStyle(),),
          ],),
          SizedBox(height: 60,),
          Row(children: [
            SizedBox(width: 30,),
            Text('Total Price',style: AppWidget.boldTextStyle(),),
            SizedBox(width: 40,),
            MaterialButton(onPressed: (){},child: Row(
              children: [
                Text("Add To cart",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart,color: Colors.white,)
              ],
            ),color: Colors.black,)
          ],),
        ],
      ),
    );
  }
}

