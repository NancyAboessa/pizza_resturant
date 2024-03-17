import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza/pages/auth/login.dart';
import 'package:pizza/pages/home/buttom%20nav%20bar.dart';
import 'package:pizza/pages/home/cubit/home_cubit.dart';
import 'package:pizza/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: buttomnav(),
      ),
    );
  }
}
