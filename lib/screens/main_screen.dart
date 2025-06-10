import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'tabs/plants_screen.dart';
import 'tabs/messages_screen.dart';
import 'tabs/media_screen.dart';
import 'tabs/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const PlantsScreen(),
    const MessagesScreen(),
    const MediaScreen(),
    const ProfileScreen(),
  ];

  // TabBar image paths
  final List<String> _tabBarNormalImages = [
    'assets/images/tabbar_nor/tabbar_1_nor.png',
    'assets/images/tabbar_nor/tabbar_2_nor.png',
    'assets/images/tabbar_nor/tabbar_3_nor.png',
    'assets/images/tabbar_nor/tabbar_4_nor.png',
  ];

  final List<String> _tabBarSelectedImages = [
    'assets/images/tabbar_pre/tabbar_1_pre.png',
    'assets/images/tabbar_pre/tabbar_2_pre.png',
    'assets/images/tabbar_pre/tabbar_3_pre.png',
    'assets/images/tabbar_pre/tabbar_4_pre.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: _pages,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildFloatingTabBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingTabBar() {
    return Container(
      margin: const EdgeInsets.all(40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.tabBarBackground,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 29,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTabItem(index: 0),
              _buildTabItem(index: 1),
              _buildTabItem(index: 2),
              _buildTabItem(index: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({required int index}) {
    final isSelected = _currentIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
          isSelected 
              ? _tabBarSelectedImages[index] 
              : _tabBarNormalImages[index],
          width: 32,
          height: 32,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
} 