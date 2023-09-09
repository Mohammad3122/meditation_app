import 'package:flutter/material.dart';
import 'package:meditation_app/constants/constants.dart';
import 'package:meditation_app/constants/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'vazir',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
