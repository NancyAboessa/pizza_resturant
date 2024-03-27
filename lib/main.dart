import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pizza/pages/auth/Sign%20up.dart';
import 'package:pizza/pages/auth/cubit/auth_cubit.dart';
import 'package:pizza/pages/auth/forgetpassword.dart';
import 'package:pizza/pages/auth/login.dart';
import 'package:pizza/pages/details%20page/details%20Page.dart';
import 'package:pizza/pages/home/buttom%20nav%20bar.dart';
import 'package:pizza/pages/home/cubit/home_cubit.dart';

import 'firebase_options.dart';
 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
