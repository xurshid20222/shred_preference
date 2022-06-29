import 'package:flutter/material.dart';
import 'package:shared_preference/pages/login_pages.dart';
import 'package:shared_preference/pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogInPage(),
      routes: {
        LogInPage.id: (context) => const LogInPage(),
        SignInPage.id: (context) => const SignInPage(),
      },
    );
  }
}

