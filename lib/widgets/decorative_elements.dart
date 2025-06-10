import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class DecorativeElements {
  static Widget buildStar({required double size, required Color color}) {
    return Icon(
      Icons.star,
      size: size,
      color: color,
    );
  }

  static Widget buildFlower() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const RadialGradient(
          colors: AppColors.flowerGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.camera_alt,
          color: AppColors.white,
          size: 32,
        ),
      ),
    );
  }

  static Widget buildDecorativeBall() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.ballGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }

  static Widget buildSmallFlower() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const RadialGradient(
          colors: AppColors.smallFlowerGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Center(
        child: Icon(
          Icons.local_florist,
          color: AppColors.white,
          size: 20,
        ),
      ),
    );
  }

  static Widget buildAnimatedDecorativeElements({
    required Animation<double> floatingAnimation,
    required Animation<double> rotationAnimation,
  }) {
    return Stack(
      children: [
        // Top left star
        Positioned(
          top: 160,
          left: 40,
          child: AnimatedBuilder(
            animation: rotationAnimation,
            builder: (context, child) {
              return Transform.rotate(
                angle: rotationAnimation.value * 2 * 3.14159,
                child: buildStar(size: 24, color: AppColors.starColor),
              );
            },
          ),
        ),
        
        // Top right flower
        Positioned(
          top: 120,
          right: 20,
          child: AnimatedBuilder(
            animation: floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, -floatingAnimation.value / 2),
                child: buildFlower(),
              );
            },
          ),
        ),
        
        // Bottom left small star
        Positioned(
          bottom: 280,
          left: 60,
          child: AnimatedBuilder(
            animation: rotationAnimation,
            builder: (context, child) {
              return Transform.rotate(
                angle: -rotationAnimation.value * 2 * 3.14159,
                child: buildStar(size: 16, color: AppColors.starColor),
              );
            },
          ),
        ),
        
        // Bottom left decorative ball
        Positioned(
          bottom: 200,
          left: 20,
          child: AnimatedBuilder(
            animation: floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, floatingAnimation.value / 3),
                child: buildDecorativeBall(),
              );
            },
          ),
        ),
        
        // Bottom right small flower
        Positioned(
          bottom: 160,
          right: 40,
          child: AnimatedBuilder(
            animation: floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, -floatingAnimation.value / 2),
                child: buildSmallFlower(),
              );
            },
          ),
        ),
      ],
    );
  }
} 