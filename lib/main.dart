import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation/cubit/auth_cubit.dart';

import 'package:graduation/presentation/screens/on_bording.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers:
    [
      BlocProvider(create: (context)=>AuthCubit()),
    ] , child: MaterialApp(debugShowCheckedModeBanner: false,

      home:SplashScreen(),
    ) );
  }
}


// PageView(
// children: [
// ONBORDING1(),
// ONBORDING2(),
// ONBORDING3(),
// ONBORDING4(),
// LOGIN(),
// LOGIN2(),
// FORGET(),
// Verify(),
// NewPassword(),
// Congratulations(),
// WelcomeBack(),
// Profile(),
// Balance(),
// ChatBot(),
// ],
// ),