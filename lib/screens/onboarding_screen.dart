import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_onboarding.png"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Fall in Love with Coffee in Blissful Delight!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color(0xffA8A8A8)),
            ),
            SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(title: "Get Started", onPressed: () {}),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
