import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants/app_colors.dart';
import '../../services/user_data_service.dart';
import '../about_app_screen.dart';
import '../privacy_policy_screen.dart';
import '../terms_of_service_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userName = 'User Name';
  String? _avatarPath;
  bool _isLoading = true;
  bool _isEditing = false;
  final TextEditingController _nameController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  /// 加载用户数据
  Future<void> _loadUserData() async {
    try {
      final name = await UserDataService.getUserName();
      final avatarPath = await UserDataService.getUserAvatarPath();
      
      setState(() {
        _userName = name;
        _avatarPath = avatarPath;
        _nameController.text = name;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  /// 选择头像
  Future<void> _pickAvatar() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxWidth: 512,
        maxHeight: 512,
      );

      if (image != null) {
        final savedPath = await UserDataService.saveUserAvatar(File(image.path));
        if (savedPath != null) {
          setState(() {
            _avatarPath = savedPath;
          });
          _showSuccessSnackBar('Avatar updated successfully');
        } else {
          _showErrorSnackBar('Failed to save avatar');
        }
      }
    } catch (e) {
      _showErrorSnackBar('Failed to select image');
    }
  }

  /// 编辑用户名
  void _startEditingName() {
    setState(() {
      _isEditing = true;
    });
  }

  /// 保存用户名
  Future<void> _saveName() async {
    if (_nameController.text.trim().isEmpty) {
      _showErrorSnackBar('Name cannot be empty');
      return;
    }

    try {
      final success = await UserDataService.saveUserName(_nameController.text.trim());
      if (success) {
        setState(() {
          _userName = _nameController.text.trim();
          _isEditing = false;
        });
        _showSuccessSnackBar('Name updated successfully');
      } else {
        _showErrorSnackBar('Failed to save name');
      }
    } catch (e) {
      _showErrorSnackBar('Failed to save name');
    }
  }

  /// 取消编辑
  void _cancelEdit() {
    setState(() {
      _nameController.text = _userName;
      _isEditing = false;
    });
  }

  void _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE2F6CC),
            Color(0xFFB3E892),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(
              color: AppColors.buttonText,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            if (_isEditing)
              TextButton(
                onPressed: _saveName,
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: AppColors.buttonText,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator(color: AppColors.buttonText))
            : SingleChildScrollView(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 120, bottom: 140),
                child: Column(
                  children: [
                    _buildAvatarSection(),
                    const SizedBox(height: 40),
                    _buildNameSection(),
                    const SizedBox(height: 40),
                    _buildUserInfo(),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildAvatarSection() {
    return GestureDetector(
      onTap: _pickAvatar,
      child: Stack(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 3),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: _avatarPath != null
                  ? Image.file(
                      File(_avatarPath!),
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: AppColors.primary.withOpacity(0.1),
                      child: const Icon(
                        Icons.person,
                        size: 60,
                        color: AppColors.buttonText,
                      ),
                    ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Icon(
                Icons.photo_library,
                size: 18,
                color: AppColors.buttonText,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.primary.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          const Icon(Icons.person_outline, color: AppColors.buttonText),
          const SizedBox(width: 15),
          Expanded(
            child: _isEditing
                ? TextField(
                    controller: _nameController,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                    autofocus: true,
                  )
                : Text(
                    _userName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
          ),
          if (_isEditing)
            IconButton(
              onPressed: _cancelEdit,
              icon: const Icon(Icons.close, color: Colors.grey),
            )
          else
            IconButton(
              onPressed: _startEditingName,
              icon: const Icon(Icons.edit, color: AppColors.buttonText),
            ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Column(
      children: [
        _buildMenuItem(
          icon: Icons.info_outline,
          title: 'About App',
          subtitle: 'App information and version',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AboutAppScreen(),
              ),
            );
          },
        ),
        const SizedBox(height: 15),
        _buildMenuItem(
          icon: Icons.privacy_tip_outlined,
          title: 'Privacy Policy',
          subtitle: 'How we protect your data',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PrivacyPolicyScreen(),
              ),
            );
          },
        ),
        const SizedBox(height: 15),
        _buildMenuItem(
          icon: Icons.description_outlined,
          title: 'Terms of Service',
          subtitle: 'Terms and conditions',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TermsOfServiceScreen(),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: AppColors.buttonText, size: 24),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

} 