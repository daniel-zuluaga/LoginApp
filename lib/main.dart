import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Playful Christmas",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      title: 'Material App',
      initialRoute: MainPage.id,
      debugShowCheckedModeBanner: false,
      routes: {
        MainPage.id: (_) => MainPage(),
        LoginPage.id: (_) => LoginPage(),
      },
    );
  }
}