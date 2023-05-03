import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/ui/utils/app_colors.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Get.replace(const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 100,
              ),
            ),
          ),
          Column(
            children: const [
              CircularProgressIndicator(color: kPrimaryColor),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'version 1.0',
                  style: TextStyle(
                    color: kGreyColor,
                    fontSize: 12,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
