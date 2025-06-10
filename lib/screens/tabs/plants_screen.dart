import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/app_colors.dart';
import '../user_detail_screen.dart';
import '../in_app_purchases_page.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen({super.key});

  @override
  State<PlantsScreen> createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  List<dynamic> allUsers = [];
  List<dynamic> filteredUsers = [];
  String selectedCategory = 'All';
  bool isLoading = true;
  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';
  
  // 金币和已查看用户管理
  int _flowerCoins = 0;
  Set<String> _viewedUsers = {};
  static const int _viewCost = 3; // 查看用户需要消耗的金币数量

  final List<String> categories = ['All', 'Popular', 'Indoor', 'Outdoor'];

  @override
  void initState() {
    super.initState();
    _loadUserData();
    _loadFlowerCoins();
    _loadViewedUsers();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      searchQuery = _searchController.text.toLowerCase();
      _applyFilters();
    });
  }

  Future<void> _loadUserData() async {
    try {
      final String response = await rootBundle.loadString('assets/json/infos.json');
      final data = json.decode(response);
      setState(() {
        allUsers = data['allData'];
        filteredUsers = allUsers;
        isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  /// 加载花币余额
  Future<void> _loadFlowerCoins() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _flowerCoins = prefs.getInt('textQuota') ?? 0;
    });
  }

  /// 加载已查看用户列表
  Future<void> _loadViewedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final viewedList = prefs.getStringList('viewedUsers') ?? [];
    setState(() {
      _viewedUsers = viewedList.toSet();
    });
  }

  /// 保存已查看用户列表
  Future<void> _saveViewedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('viewedUsers', _viewedUsers.toList());
  }

  /// 扣除花币
  Future<bool> _deductFlowerCoins(int amount) async {
    if (_flowerCoins < amount) {
      return false;
    }
    
    final prefs = await SharedPreferences.getInstance();
    final newBalance = _flowerCoins - amount;
    await prefs.setInt('textQuota', newBalance);
    
    setState(() {
      _flowerCoins = newBalance;
    });
    
    return true;
  }

  /// 检查是否可以查看用户（免费或有足够金币）
  bool _canViewUser(String userId) {
    return _viewedUsers.contains(userId) || _flowerCoins >= _viewCost;
  }

  /// 处理用户卡片点击
  Future<void> _handleUserCardTap(dynamic user) async {
    final userId = user['userId'].toString();
    
    // 如果已经查看过该用户，直接进入
    if (_viewedUsers.contains(userId)) {
      _navigateToUserDetail(user);
      return;
    }
    
    // 检查金币余额
    if (_flowerCoins < _viewCost) {
      _showInsufficientCoinsDialog();
      return;
    }
    
    // 扣除金币并记录已查看
    final success = await _deductFlowerCoins(_viewCost);
    if (success) {
      _viewedUsers.add(userId);
      await _saveViewedUsers();
      _navigateToUserDetail(user);
      
      // 显示扣费提示
      _showSnackBar('Spent $_viewCost Flower Coins to view ${user['name']}');
    }
  }

  /// 导航到用户详情页面
  void _navigateToUserDetail(dynamic user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailScreen(user: user),
      ),
    );
  }

  /// 显示金币不足对话框
  void _showInsufficientCoinsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            children: [
              Icon(
                Icons.local_florist,
                color: AppColors.primary,
                size: 28,
              ),
              const SizedBox(width: 12),
              const Text(
                'Insufficient Coins',
                style: TextStyle(
                  color: AppColors.buttonText,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You need $_viewCost Flower Coins to view this user profile.',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Current balance: $_flowerCoins Flower Coins',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InAppPurchasesPage(),
                  ),
                ).then((_) {
                  // 返回时重新加载金币余额
                  _loadFlowerCoins();
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Get Coins',
                  style: TextStyle(
                    color: AppColors.buttonText,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// 显示提示消息
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  void _filterUsers(String category) {
    setState(() {
      selectedCategory = category;
      _applyFilters();
    });
  }

  void _applyFilters() {
    List<dynamic> categoryFiltered;
    
    // 首先按分类过滤
    switch (selectedCategory) {
      case 'All':
        categoryFiltered = allUsers;
        break;
      case 'Popular':
        categoryFiltered = allUsers.where((user) {
          int userId = int.parse(user['userId']);
          return userId >= 101 && userId <= 105;
        }).toList();
        break;
      case 'Indoor':
        categoryFiltered = allUsers.where((user) {
          int userId = int.parse(user['userId']);
          return userId >= 106 && userId <= 110;
        }).toList();
        break;
      case 'Outdoor':
        categoryFiltered = allUsers.where((user) {
          int userId = int.parse(user['userId']);
          return userId >= 111 && userId <= 115;
        }).toList();
        break;
      default:
        categoryFiltered = allUsers;
    }

    // 然后按搜索关键词过滤
    if (searchQuery.isNotEmpty) {
      filteredUsers = categoryFiltered.where((user) {
        final name = user['name'].toString().toLowerCase();
        final signature = (user['signature'] ?? '').toString().toLowerCase();
        return name.contains(searchQuery) || signature.contains(searchQuery);
      }).toList();
    } else {
      filteredUsers = categoryFiltered;
    }
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
        body: isLoading
            ? const Center(child: CircularProgressIndicator(color: AppColors.buttonText))
            : Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top + 20),
                  _buildSearchBar(),
                  const SizedBox(height: 15),
                  _buildCategoryTabs(),
                  Expanded(
                    child: _buildUserGrid(),
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _searchController,
        style: const TextStyle(color: AppColors.buttonText),
        decoration: InputDecoration(
          hintText: 'Search users...',
          hintStyle: TextStyle(color: AppColors.buttonText.withOpacity(0.6)),
          prefixIcon: Icon(Icons.search, color: AppColors.buttonText.withOpacity(0.7)),
          suffixIcon: searchQuery.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear, color: AppColors.buttonText.withOpacity(0.7)),
                  onPressed: () {
                    _searchController.clear();
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.white.withOpacity(0.9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  Widget _buildCategoryTabs() {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = selectedCategory == category;
          
          return GestureDetector(
            onTap: () => _filterUsers(category),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                color: isSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: isSelected 
                    ? null 
                    : Border.all(color: Colors.white.withOpacity(0.5)),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: isSelected ? AppColors.buttonText : Colors.white,
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildUserGrid() {
    if (filteredUsers.isEmpty) {
      return Center(
        child: Text(
          searchQuery.isNotEmpty ? 'No users found for "$searchQuery"' : 'No users found',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.8,
        ),
        itemCount: filteredUsers.length,
        itemBuilder: (context, index) {
          final user = filteredUsers[index];
          return _buildUserCard(user);
        },
      ),
    );
  }

  Widget _buildUserCard(dynamic user) {
    final userId = user['userId'].toString();
    final isViewed = _viewedUsers.contains(userId);
    final canView = _canViewUser(userId);
    
    return GestureDetector(
      onTap: () => _handleUserCardTap(user),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              // Background image
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  user['profileBackgroud'],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    debugPrint('Error loading image: ${user['profileBackgroud']}');
                    debugPrint('Error: $error');
                    return Container(
                      color: AppColors.primary.withOpacity(0.3),
                      child: const Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
              // Gradient overlay
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
              // 金币状态指示器
              if (!isViewed)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: canView 
                          ? AppColors.primary.withOpacity(0.9)
                          : Colors.red.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.local_florist,
                          size: 14,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '$_viewCost',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              // 已查看标识
              if (isViewed)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              // User info
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        user['name'].toString().toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        user['signature'] ?? '',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 