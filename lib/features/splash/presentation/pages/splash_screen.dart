import 'package:flutter/material.dart';
import 'dart:async';
import 'package:page_transition/page_transition.dart';
import '../../../onboarding/presentation/pages/onboarding_screen.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() {
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: const OnboardingScreen(),
            duration: const Duration(milliseconds: 1000),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Large Background Glow/Aura to match the image exactly
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [
                    AppTheme.primaryGold.withOpacity(0.12),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sparkle Icon (Logo)
                const Icon(
                  Icons.auto_awesome,
                  size: 100,
                  color: AppTheme.primaryGold,
                ),
                const SizedBox(height: 30),
                // App Name "WedAI" in WHITE as per image
                Text(
                  AppStrings.appName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 62,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.5,
                  ),
                ),
                const SizedBox(height: 5),
                // Tagline "Wedding Photo Editor" in GOLD as per image
                Text(
                  AppStrings.appTagline,
                  style: const TextStyle(
                    color: AppTheme.primaryGold,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
