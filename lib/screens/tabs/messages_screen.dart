import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/app_colors.dart';
import '../video_player_screen.dart';
import '../post_detail_screen.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  List<PostItem> _posts = [];
  bool _isLoading = true;
  Map<String, bool> _likedPosts = {};
  Map<String, int> _likeCounts = {};

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  Future<void> _loadPosts() async {
    try {
      final String jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/json/infos.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> users = jsonData['allData'] ?? [];
      
      List<PostItem> posts = [];
      for (var user in users) {
        final List<dynamic> userPosts = user['post'] ?? [];
        for (var post in userPosts) {
          posts.add(PostItem(
            postId: post['postId'],
            userId: user['userId'],
            userName: user['name'],
            userAvatar: user['profileicon'],
            userSignature: user['signature'],
            message: post['message'],
            videoUrl: post['videoUrl'],
          ));
        }
      }
      
      // Shuffle posts to create a mixed feed
      posts.shuffle();
      
      // 加载点赞状态
      await _loadLikeStatuses(posts);
      
      setState(() {
        _posts = posts;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading posts: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadLikeStatuses(List<PostItem> posts) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsKey = 'liked_posts';
      final likedPostsList = prefs.getStringList(likedPostsKey) ?? [];
      
      // 加载每个帖子的点赞状态和点赞数
      for (var post in posts) {
        _likedPosts[post.postId] = likedPostsList.contains(post.postId);
        
        // 获取保存的点赞数，如果没有则生成随机数
        final likeCountKey = 'like_count_${post.postId}';
        final savedLikeCount = prefs.getInt(likeCountKey);
        if (savedLikeCount != null) {
          _likeCounts[post.postId] = savedLikeCount;
        } else {
          // 生成随机点赞数并保存
          final randomLikeCount = (10 + (post.postId.hashCode % 100)).abs();
          _likeCounts[post.postId] = randomLikeCount;
          await prefs.setInt(likeCountKey, randomLikeCount);
        }
      }
    } catch (e) {
      debugPrint('Error loading like statuses: $e');
    }
  }

  Future<void> _toggleLike(PostItem post) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsKey = 'liked_posts';
      final likeCountKey = 'like_count_${post.postId}';
      
      // 获取当前点赞列表
      final likedPostsList = prefs.getStringList(likedPostsKey) ?? [];
      
      // 切换点赞状态
      final wasLiked = _likedPosts[post.postId] ?? false;
      final newLikedState = !wasLiked;
      
      // 更新点赞数
      final currentLikeCount = _likeCounts[post.postId] ?? 0;
      final newLikeCount = newLikedState ? currentLikeCount + 1 : currentLikeCount - 1;
      
      // 更新本地状态
      setState(() {
        _likedPosts[post.postId] = newLikedState;
        _likeCounts[post.postId] = newLikeCount;
      });
      
      // 更新存储
      if (newLikedState) {
        if (!likedPostsList.contains(post.postId)) {
          likedPostsList.add(post.postId);
        }
      } else {
        likedPostsList.remove(post.postId);
      }
      
      await prefs.setStringList(likedPostsKey, likedPostsList);
      await prefs.setInt(likeCountKey, newLikeCount);
    } catch (e) {
      debugPrint('Error toggling like: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Posts',
          style: TextStyle(
            color: AppColors.buttonText,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: AppColors.primary,
            ),
            onPressed: _loadPosts,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            )
          : _posts.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.post_add,
                        size: 80,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'No posts available',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: _loadPosts,
                  color: AppColors.primary,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return _buildPostCard(_posts[index]);
                    },
                  ),
                ),
    );
  }

  Widget _buildPostCard(PostItem post) {
    return GestureDetector(
      onTap: () async {
        // 导航到详情页并等待返回
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(post: post),
          ),
        );
        // 返回后刷新点赞状态
        await _refreshPostLikeStatus(post);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User info header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primary.withOpacity(0.3),
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        post.userAvatar,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: AppColors.primary,
                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 25,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.userName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.buttonText,
                          ),
                        ),
                        if (post.userSignature.isNotEmpty)
                          Text(
                            post.userSignature,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.report_outlined,
                      color: Colors.red,
                      size: 20,
                    ),
                    onPressed: () => _showReportDialog(post),
                    tooltip: 'Report Post',
                  ),
                ],
              ),
            ),
            
            // Post content
            if (post.message.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  post.message,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
              ),
            
            const SizedBox(height: 12),
            
            // Video thumbnail
            if (post.videoUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoPlayerScreen(
                          videoUrl: post.videoUrl,
                          userMessage: post.message,
                          userName: post.userName,
                        ),
                      ),
                    );
                  },
                  child: VideoThumbnailWidget(
                    videoUrl: post.videoUrl,
                  ),
                ),
              ),
            
            // Action buttons
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  _buildActionButton(
                    _likedPosts[post.postId] == true ? Icons.favorite : Icons.favorite_border,
                    'Like',
                    _likedPosts[post.postId] == true ? Colors.red : Colors.grey[600]!,
                    () => _toggleLike(post),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${_likeCounts[post.postId] ?? 0}',
                    style: TextStyle(
                      fontSize: 13,
                      color: _likedPosts[post.postId] == true ? Colors.red : Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 20),
                  _buildActionButton(
                    Icons.chat_bubble_outline,
                    'Comment',
                    Colors.grey[600]!,
                    () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: color,
          ),
          if (label.isNotEmpty) ...[
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                color: color,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _showReportDialog(PostItem post) {
    final reasons = [
      'Inappropriate content',
      'Harassment or bullying',
      'Spam or misleading',
      'False information',
      'Violence or harmful content',
      'Copyright infringement',
      'Other reasons',
    ];

    String? selectedReason;

    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              title: const Row(
                children: [
                  Icon(Icons.report, color: Colors.red, size: 24),
                  SizedBox(width: 10),
                  Text('Report Post'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Please select the reason for reporting this post by ${post.userName}:'),
                  const SizedBox(height: 15),
                  ...reasons.map((reason) => RadioListTile<String>(
                    title: Text(reason, style: const TextStyle(fontSize: 14)),
                    value: reason,
                    groupValue: selectedReason,
                    onChanged: (value) {
                      setState(() {
                        selectedReason = value;
                      });
                    },
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                  )),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: selectedReason != null
                      ? () => Navigator.pop(context, true)
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Report'),
                ),
              ],
            );
          },
        );
      },
    ).then((confirmed) {
      if (confirmed == true) {
        _removePost(post);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Post reported successfully. Thank you for helping keep our community safe.',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Undo',
              textColor: Colors.white,
              onPressed: () {
                _restorePost(post);
              },
            ),
          ),
        );
      }
    });
  }

  void _removePost(PostItem post) {
    setState(() {
      _posts.removeWhere((p) => p.postId == post.postId);
    });
  }

  void _restorePost(PostItem post) {
    setState(() {
      _posts.add(post);
      // Re-shuffle to maintain random order
      _posts.shuffle();
    });
  }

  Future<void> _refreshPostLikeStatus(PostItem post) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsKey = 'liked_posts';
      final likeCountKey = 'like_count_${post.postId}';
      
      // 重新加载点赞状态
      final likedPostsList = prefs.getStringList(likedPostsKey) ?? [];
      final savedLikeCount = prefs.getInt(likeCountKey) ?? (_likeCounts[post.postId] ?? 0);
      
      setState(() {
        _likedPosts[post.postId] = likedPostsList.contains(post.postId);
        _likeCounts[post.postId] = savedLikeCount;
      });
    } catch (e) {
      debugPrint('Error refreshing post like status: $e');
    }
  }
}

class VideoThumbnailWidget extends StatefulWidget {
  final String videoUrl;

  const VideoThumbnailWidget({super.key, required this.videoUrl});

  @override
  State<VideoThumbnailWidget> createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeThumbnail();
  }

  Future<void> _initializeThumbnail() async {
    try {
      _controller = VideoPlayerController.asset(widget.videoUrl);
      await _controller!.initialize();
      await _controller!.seekTo(Duration.zero);
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
    } catch (e) {
      debugPrint('Error initializing video thumbnail: $e');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            if (_isInitialized && _controller != null)
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller!.value.size.width,
                    height: _controller!.value.size.height,
                    child: VideoPlayer(_controller!),
                  ),
                ),
              )
            else
              Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.primary.withOpacity(0.1),
                child: const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primary,
                    strokeWidth: 2,
                  ),
                ),
              ),
            
            // Play button overlay
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        offset: const Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 30,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Background circle with gradient
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              Colors.grey[50]!,
                            ],
                          ),
                        ),
                      ),
                      // Play icon
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(left: 4), // Center the triangle visually
                          child: Icon(
                            Icons.play_arrow,
                            size: 35,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostItem {
  final String postId;
  final String userId;
  final String userName;
  final String userAvatar;
  final String userSignature;
  final String message;
  final String videoUrl;

  PostItem({
    required this.postId,
    required this.userId,
    required this.userName,
    required this.userAvatar,
    required this.userSignature,
    required this.message,
    required this.videoUrl,
  });
} 