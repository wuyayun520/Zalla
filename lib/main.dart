import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/launch_screen.dart';
import 'constants/app_colors.dart';

void main() {
  runApp(const ZallaApp());
}

class ZallaApp extends StatelessWidget {
  const ZallaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zalla',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const LaunchScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
