import 'package:flutter/material.dart';

class AnimationService {
  late AnimationController floatingController;
  late AnimationController rotationController;
  late Animation<double> floatingAnimation;
  late Animation<double> rotationAnimation;

  void initializeAnimations(TickerProvider vsync) {
    // Floating animation controller
    floatingController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: vsync,
    );
    
    // Rotation animation controller
    rotationController = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: vsync,
    );
    
    floatingAnimation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(CurvedAnimation(
      parent: floatingController,
      curve: Curves.easeInOut,
    ));
    
    rotationAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: rotationController,
      curve: Curves.linear,
    ));
    
    // Start animations
    floatingController.repeat(reverse: true);
    rotationController.repeat();
  }

  void disposeAnimations() {
    floatingController.dispose();
    rotationController.dispose();
  }
} 