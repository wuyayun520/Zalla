import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../constants/app_colors.dart';
import '../user_detail_screen.dart';

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

  final List<String> categories = ['All', 'Popular', 'Indoor', 'Outdoor'];

  @override
  void initState() {
    super.initState();
    _loadUserData();
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetailScreen(user: user),
          ),
        );
      },
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