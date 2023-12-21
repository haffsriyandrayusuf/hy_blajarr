import 'package:flutter/material.dart';
import 'package:hy_blajarr/constants.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 280,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40),
                    image: const DecorationImage(
                      image: AssetImage('images/splash.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Learn.',
                style: TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.w900,
                  color: primaryTextColor,
                ),
              ),
              const Text(
                'Practice.',
                style: TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.w900,
                  color: buttonColor,
                  height: 0.4,
                ),
              ),
              const Text(
                'Earn.',
                style: TextStyle(
                  fontSize: 66,
                  fontWeight: FontWeight.w900,
                  color: primaryTextColor,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'New way to study abroad from the\nreal professional with great work.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  // letterSpacing: 1.3,
                  color: secondaryTextColor,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 52,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    'Create New Acoount',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: primaryTextColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Sign In to My Account',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: secondaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
