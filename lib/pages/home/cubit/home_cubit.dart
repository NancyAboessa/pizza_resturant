import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../order/order.dart';
import '../home.dart';
import '../../profile/profile.dart';
import '../../Wallet/wallet.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
int SelectedIndex=0;
  static HomeCubit get(context) => BlocProvider.of(context);

   List<Widget>pages=[
     Home(),
     order(),
     profile(),
     wallet()
   ];
  List<String>screens=[
    "Home",
    "order",
    "profile",
    "wallet"
  ];

  ontapbuttomnav(int index){
   SelectedIndex=index;
   emit(ontapButtomNav());
 }
}
