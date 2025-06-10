import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import 'terms_of_service_screen.dart';
import 'privacy_policy_screen.dart';
import 'main_screen.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  bool _isAgreed = true; // Default to true as requested

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_loginbg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              // Status bar placeholder
              SizedBox(height: MediaQuery.of(context).padding.top + 20),
              
              // Top status bar
              _buildStatusBar(),
              
              // Center content with app name
              Expanded(
                child: Center(
                ),
              ),
              
              // Bottom section with button and agreement
              _buildBottomSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '9:41',
          style: TextStyle(
            color: AppColors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: const [
            Icon(Icons.signal_cellular_4_bar, color: AppColors.white, size: 16),
            SizedBox(width: 4),
            Icon(Icons.wifi, color: AppColors.white, size: 16),
            SizedBox(width: 4),
            Icon(Icons.battery_full, color: AppColors.white, size: 20),
          ],
        ),
      ],
    );
  }

  Widget _buildBottomSection() {
    return Column(
      children: [
        // Enter APP button
        _buildEnterButton(),
        
        const SizedBox(height: 24),
        
        // Agreement checkbox and links
        _buildAgreementSection(),
        
        SizedBox(height: MediaQuery.of(context).padding.bottom + 60),
      ],
    );
  }

  Widget _buildEnterButton() {
    return Container(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: _isAgreed ? _enterApp : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.buttonText,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          disabledBackgroundColor: AppColors.white.withOpacity(0.6),
          disabledForegroundColor: AppColors.buttonText.withOpacity(0.6),
        ),
        child: const Text(
          'Enter Zalla',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildAgreementSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCheckbox(),
        const SizedBox(width: 12),
        Expanded(child: _buildAgreementText()),
      ],
    );
  }

  Widget _buildCheckbox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isAgreed = !_isAgreed;
        });
        HapticFeedback.lightImpact();
      },
      child: Container(
        width: 20,
        height: 20,
        margin: const EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: _isAgreed ? AppColors.primary : AppColors.transparent,
          border: Border.all(
            color: _isAgreed 
                ? AppColors.primary 
                : AppColors.white.withOpacity(0.8),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: _isAgreed
            ? const Icon(
                Icons.check,
                color: AppColors.buttonText,
                size: 14,
              )
            : null,
      ),
    );
  }

  Widget _buildAgreementText() {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 14,
          height: 1.4,
        ),
        children: [
          const TextSpan(text: 'I have read and agree '),
          WidgetSpan(
            child: GestureDetector(
              onTap: _navigateToTermsOfService,
              child: const Text(
                'Terms of Service',
                style: TextStyle(
                  color: AppColors.buttonText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.buttonText,
                ),
              ),
            ),
          ),
          const TextSpan(text: ' and '),
          WidgetSpan(
            child: GestureDetector(
              onTap: _navigateToPrivacyPolicy,
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: AppColors.buttonText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.buttonText,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToTermsOfService() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TermsOfServiceScreen(),
      ),
    );
  }

  void _navigateToPrivacyPolicy() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrivacyPolicyScreen(),
      ),
    );
  }

  void _enterApp() {
    HapticFeedback.lightImpact();
    
    // Navigate to main app screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainScreen()),
    );
  }
} 