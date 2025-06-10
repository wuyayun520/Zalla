import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PolicyBottomSheet {
  static Widget build({
    required String title, 
    required String content
  }) {
    return Container(
      height: 600, // Fixed height instead of using MediaQuery
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonText,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static void showTermsOfService(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.transparent,
      builder: (context) => build(
        title: 'Terms of Service',
        content: 'Welcome to Zalla! By using our application, you agree to comply with and be bound by the following terms and conditions. Please review these terms carefully.\n\n'
                'Use of the Application: You may use this application for personal, non-commercial purposes only. You agree not to use the application for any unlawful or prohibited activities.\n\n'
                'User Content: Any content you submit through the application remains your property, but you grant us a license to use, modify, and display such content as necessary to provide our services.\n\n'
                'Privacy: We are committed to protecting your privacy. Please review our Privacy Policy for details on how we collect, use, and protect your information.\n\n'
                'Limitation of Liability: We are not liable for any damages arising from your use of the application.\n\n'
                'Changes to Terms: We reserve the right to modify these terms at any time. Continued use of the application constitutes acceptance of modified terms.',
      ),
    );
  }

  static void showPrivacyPolicy(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.transparent,
      builder: (context) => build(
        title: 'Privacy Policy',
        content: 'Your privacy is critically important to us. This Privacy Policy explains how we collect, use, and protect your information when you use Zalla.\n\n'
                'Information We Collect: We may collect information you provide directly to us, such as when you create an account, use our features, or contact us for support.\n\n'
                'How We Use Information: We use the information we collect to provide, maintain, and improve our services, communicate with you, and ensure the security of our application.\n\n'
                'Information Sharing: We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this policy.\n\n'
                'Data Security: We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.\n\n'
                'Data Retention: We retain your information only as long as necessary to provide our services and fulfill the purposes outlined in this policy.\n\n'
                'Contact Us: If you have any questions about this Privacy Policy, please contact us through the application.',
      ),
    );
  }
} 