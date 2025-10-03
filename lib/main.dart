import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/onboarding_screen.dart';
import 'package:myapp/screens/product_detail_screen.dart';
import 'package:myapp/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: kFontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: HomeScreen(),
      routes: {
        // "/": (context) => SplashScreen(),
        "/": (context) => HomeScreen(),
        "/product-detail": (context) => ProductDetailScreen(),
      },
    );
  }
}
