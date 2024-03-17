import 'package:flutter/material.dart';
import 'package:pizza/cstoms/customs.dart';
import 'package:pizza/pages/profile/profile.dart';
import 'package:pizza/pages/Wallet/wallet.dart';

import '../../cstoms/longcard.dart';
import '../../cstoms/verticalCard.dart';
import '../order/order.dart';
import 'buttom nav bar.dart';

class Home extends StatelessWidget {
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello Karamela,',
                  style: AppWidget.boldTextStyle(),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Icon(Icons.shopping_cart,color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text('Delicious Food',
                style: AppWidget.HeaderTextStyle(),
              ),
              Text('Discover and Get Great Food',
                style: AppWidget.lightTextStyle(),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                          'assets/imeges/burger.jpg',
                      height: 50,fit: BoxFit.cover,width: 50,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/imeges/dounat.jpg',
                        height: 50,fit: BoxFit.cover,width: 50,
                      ),
                    ),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/imeges/pizza.jpg',
                        height: 50,fit: BoxFit.cover,width: 50,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              SizedBox(height: 330,width:double.infinity,
                child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i){
                  return card() ;
                }),
              ),
              SizedBox(height: 600,width:400,
                child: ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,i){
                      return verticalcard() ;
                    }),
              )
            ],
          ),
        ),
      ),
    // bottomNavigationBar: buttomnav(),
    );
  }
}

