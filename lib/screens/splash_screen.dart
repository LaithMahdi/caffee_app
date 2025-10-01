import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC67C4E),
      body: Center(
        child: Image.asset("assets/images/logo.png", height: 97, width: 97),
      ),
    );
  }
}
