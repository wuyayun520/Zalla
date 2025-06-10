import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

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
          'Terms of Service',
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
              'Welcome to Zalla',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.buttonText,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'By using our application, you agree to comply with and be bound by the following terms and conditions. Please review these terms carefully before using our services.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
            
            _buildSection(
              '1. Use of the Application',
              'You may use this application for personal, non-commercial purposes only. You agree not to use the application for any unlawful or prohibited activities. You are responsible for maintaining the confidentiality of your account information.',
            ),
            
            _buildSection(
              '2. User Content',
              'Any content you submit through the application remains your property, but you grant us a non-exclusive, worldwide, royalty-free license to use, modify, and display such content as necessary to provide our services.',
            ),
            
            _buildSection(
              '3. Privacy',
              'Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and protect your information. By using our services, you consent to our data practices as described in the Privacy Policy.',
            ),
            
            _buildSection(
              '4. Prohibited Activities',
              'You agree not to engage in any of the following prohibited activities: (a) violating laws or regulations; (b) infringing on intellectual property rights; (c) transmitting harmful or malicious code; (d) attempting to gain unauthorized access to our systems.',
            ),
            
            _buildSection(
              '5. Limitation of Liability',
              'We are not liable for any direct, indirect, incidental, special, or consequential damages arising from your use of the application. Our total liability shall not exceed the amount paid by you for our services.',
            ),
            
            _buildSection(
              '6. Changes to Terms',
              'We reserve the right to modify these terms at any time. We will notify users of significant changes through the application or via email. Continued use of the application constitutes acceptance of modified terms.',
            ),
            
            _buildSection(
              '7. Termination',
              'We may terminate or suspend your account and access to our services at our sole discretion, without prior notice, for conduct that we believe violates these terms or is harmful to other users.',
            ),
            
            _buildSection(
              '8. Contact Information',
              'If you have any questions about these Terms of Service, please contact us through the application or visit our support page.\n\nYou can also reach us directly at: support@zalla.com',
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