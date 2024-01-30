import 'package:flutter/material.dart';
import 'package:graduation/presentation/screens/Forget_pass.dart';
import 'package:graduation/presentation/screens/log_in.dart';
import 'package:graduation/presentation/screens/log_in2.dart';
import 'package:graduation/presentation/screens/on_boding3.dart';
import 'package:graduation/presentation/screens/on_bording1.dart';
import 'package:graduation/presentation/screens/on_bording.dart';
import 'package:graduation/presentation/screens/on_bording2.dart';
import 'package:graduation/presentation/screens/on_bording4.dart';
import 'package:graduation/presentation/screens/verify.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // Tis is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Verify(),
    );
  }
}
//ONBORDING1
//ONBORDING2
//ONBORDING3
//ONBORDING4
//LOGIN
//LOGIN2
//FORGET