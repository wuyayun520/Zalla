import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.buttonText),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Privacy Policy',
          style: TextStyle(
            color: AppColors.buttonText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.buttonText,
              ),
            ),
            const SizedBox(height: 24),
            
            _buildSection(
              'Your Privacy Matters',
              'Your privacy is critically important to us. This Privacy Policy explains how we collect, use, and protect your information when you use Zalla application.',
            ),
            
            _buildSection(
              '1. Information We Collect',
              'We may collect information you provide directly to us, such as when you:\n• Create an account\n• Use our features and services\n• Contact us for support\n• Participate in surveys or promotions\n\nWe also automatically collect certain information about your device and usage patterns.',
            ),
            
            _buildSection(
              '2. How We Use Information',
              'We use the information we collect to:\n• Provide, maintain, and improve our services\n• Process transactions and send related information\n• Communicate with you about products, services, and updates\n• Ensure the security and integrity of our application\n• Comply with legal obligations',
            ),
            
            _buildSection(
              '3. Information Sharing',
              'We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this policy. We may share information with:\n• Service providers who assist in our operations\n• Legal authorities when required by law\n• Other parties with your explicit consent',
            ),
            
            _buildSection(
              '4. Data Security',
              'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet is 100% secure.',
            ),
            
            _buildSection(
              '5. Data Retention',
              'We retain your information only as long as necessary to provide our services and fulfill the purposes outlined in this policy. When we no longer need your information, we will securely delete or anonymize it.',
            ),
            
            _buildSection(
              '6. Your Rights',
              'You have the right to:\n• Access and review your personal information\n• Correct inaccurate or incomplete information\n• Delete your account and associated data\n• Opt-out of certain communications\n• Port your data to another service',
            ),
            
            _buildSection(
              '7. Cookies and Tracking',
              'We use cookies and similar tracking technologies to enhance your experience, analyze usage patterns, and personalize content. You can control cookie preferences through your browser settings.',
            ),
            
            _buildSection(
              '8. Children\'s Privacy',
              'Our service is not intended for children under 13 years of age. We do not knowingly collect personal information from children under 13. If we become aware of such collection, we will take steps to delete the information.',
            ),
            
            _buildSection(
              '9. Changes to Privacy Policy',
              'We may update this Privacy Policy from time to time. We will notify you of any material changes by posting the new policy on this page and updating the "Last updated" date.',
            ),
            
            _buildSection(
              '10. Contact Us',
              'If you have any questions about this Privacy Policy or our data practices, please contact us through the application or visit our support page.\n\nYou can also reach us directly at: support@zalla.com',
            ),
            
            const SizedBox(height: 32),
            const Text(
              'Last updated: January 2025',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.buttonText,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
} 