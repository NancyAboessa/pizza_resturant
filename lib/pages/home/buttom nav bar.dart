import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza/pages/home/home.dart';
import 'package:pizza/pages/profile/profile.dart';
import 'package:pizza/pages/Wallet/wallet.dart';
import 'package:pizza/pages/order/order.dart';

import 'cubit/home_cubit.dart';
import 'home.dart';

class buttomnav extends StatelessWidget {
  buttomnav({super.key});

  List<Widget>pages=[Home(),order(),wallet(),profile(),];

  @override
  Widget build(BuildContext context) {
    var cubit=HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.SelectedIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                 cubit.ontapbuttomnav(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.house_siding,color: Colors.black,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart,color: Colors.black,),
                  label: 'Order',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet,color: Colors.black,),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person,color: Colors.black,),
                  label: 'Profile',

                ),


              ]),
          body:pages[cubit.SelectedIndex],
        );
      },
    );
  }
}
