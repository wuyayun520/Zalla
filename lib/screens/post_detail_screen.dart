import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:math';
import '../constants/app_colors.dart';
import 'video_player_screen.dart';
import 'tabs/messages_screen.dart';

class PostDetailScreen extends StatefulWidget {
  final PostItem post;

  const PostDetailScreen({super.key, required this.post});

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  bool _isLiked = false;
  int _likeCount = 0;
  final List<Comment> _comments = [];
  final TextEditingController _commentController = TextEditingController();
  VideoPlayerController? _videoController;
  bool _isVideoInitialized = false;
  bool _isLoadingComments = true;

  // 10条样例评论池
  final List<Comment> _sampleCommentsPool = [
    Comment(
      id: 'sample_1',
      userName: 'Garden Lover',
      userAvatar: 'assets/images/data/2/pic_1.jpg',
      content: 'Beautiful flowers! 🌸 Where is this garden located?',
      time: '2h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_2',
      userName: 'Nature Fan',
      userAvatar: 'assets/images/data/3/pic_1.jpg',
      content: 'Amazing shots! I love the natural lighting ✨',
      time: '1h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_3',
      userName: 'Photography Pro',
      userAvatar: 'assets/images/data/4/pic_1.jpg',
      content: 'Great composition! What camera did you use?',
      time: '3h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_4',
      userName: 'Flower Expert',
      userAvatar: 'assets/images/data/5/pic_1.jpg',
      content: 'These look like cherry blossoms. Perfect timing! 🌸🌸',
      time: '4h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_5',
      userName: 'Travel Blogger',
      userAvatar: 'assets/images/data/6/pic_1.jpg',
      content: 'This place is on my bucket list now! Thanks for sharing 😍',
      time: '5h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_6',
      userName: 'Art Student',
      userAvatar: 'assets/images/data/7/pic_1.jpg',
      content: 'The colors are so vibrant! Perfect for my art reference 🎨',
      time: '6h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_7',
      userName: 'Local Guide',
      userAvatar: 'assets/images/data/8/pic_1.jpg',
      content: 'I know this place! Best time to visit is early morning ☀️',
      time: '7h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_8',
      userName: 'Meditation Lover',
      userAvatar: 'assets/images/data/9/pic_1.jpg',
      content: 'So peaceful and calming. Perfect meditation spot 🧘‍♀️',
      time: '8h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_9',
      userName: 'Weekend Explorer',
      userAvatar: 'assets/images/data/10/pic_1.jpg',
      content: 'Adding this to my weekend adventure list! 🚗',
      time: '9h ago',
      isUserComment: false,
    ),
    Comment(
      id: 'sample_10',
      userName: 'Nature Photographer',
      userAvatar: 'assets/images/data/11/pic_1.jpg',
      content: 'The depth of field in this shot is incredible! Well done 📸',
      time: '10h ago',
      isUserComment: false,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _likeCount = _generateRandomLikeCount();
    _loadLikeStatus();
    _loadComments();
    if (widget.post.videoUrl.isNotEmpty) {
      _initializeVideo();
    }
  }

  @override
  void dispose() {
    _commentController.dispose();
    _videoController?.dispose();
    super.dispose();
  }

  int _generateRandomLikeCount() {
    return (10 + (widget.post.postId.hashCode % 100)).abs();
  }

  Future<void> _loadLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsKey = 'liked_posts';
      final likeCountKey = 'like_count_${widget.post.postId}';
      
      // 获取用户点赞的帖子列表
      final likedPosts = prefs.getStringList(likedPostsKey) ?? [];
      
      // 获取保存的点赞数，如果没有则使用随机生成的
      final savedLikeCount = prefs.getInt(likeCountKey);
      
      setState(() {
        _isLiked = likedPosts.contains(widget.post.postId);
        if (savedLikeCount != null) {
          _likeCount = savedLikeCount;
        } else {
          // 首次访问，保存初始点赞数
          prefs.setInt(likeCountKey, _likeCount);
        }
      });
    } catch (e) {
      debugPrint('Error loading like status: $e');
    }
  }

  Future<void> _saveLikeStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final likedPostsKey = 'liked_posts';
      final likeCountKey = 'like_count_${widget.post.postId}';
      
      // 获取当前点赞的帖子列表
      final likedPosts = prefs.getStringList(likedPostsKey) ?? [];
      
      if (_isLiked) {
        // 添加到点赞列表
        if (!likedPosts.contains(widget.post.postId)) {
          likedPosts.add(widget.post.postId);
        }
      } else {
        // 从点赞列表移除
        likedPosts.remove(widget.post.postId);
      }
      
      // 保存更新后的数据
      await prefs.setStringList(likedPostsKey, likedPosts);
      await prefs.setInt(likeCountKey, _likeCount);
    } catch (e) {
      debugPrint('Error saving like status: $e');
    }
  }

  Future<void> _loadComments() async {
    setState(() {
      _isLoadingComments = true;
    });

    try {
      final prefs = await SharedPreferences.getInstance();
      final postCommentsKey = 'post_comments_${widget.post.postId}';
      final postSampleCommentsKey = 'post_sample_comments_${widget.post.postId}';
      final reportedCommentsKey = 'reported_comments_${widget.post.postId}';
      
      // 从本地存储读取用户评论
      final savedCommentsJson = prefs.getStringList(postCommentsKey) ?? [];
      final List<Comment> userComments = savedCommentsJson.map((jsonStr) {
        final Map<String, dynamic> commentData = json.decode(jsonStr);
        return Comment.fromJson(commentData);
      }).toList();
      
      // 检查是否已有保存的样例评论
      final savedSampleCommentsJson = prefs.getStringList(postSampleCommentsKey) ?? [];
      List<Comment> sampleComments;
      
      if (savedSampleCommentsJson.isNotEmpty) {
        // 使用已保存的样例评论
        sampleComments = savedSampleCommentsJson.map((jsonStr) {
          final Map<String, dynamic> commentData = json.decode(jsonStr);
          return Comment.fromJson(commentData);
        }).toList();
      } else {
        // 首次访问，随机选择样例评论并保存
        final random = Random();
        final numSampleComments = 3 + random.nextInt(4); // 3-6条
        final shuffledSamples = List<Comment>.from(_sampleCommentsPool)..shuffle();
        sampleComments = shuffledSamples.take(numSampleComments).toList();
        
        // 保存样例评论到本地存储
        final sampleCommentsJson = sampleComments.map((comment) => json.encode(comment.toJson())).toList();
        await prefs.setStringList(postSampleCommentsKey, sampleCommentsJson);
      }
      
      // 获取被举报的评论ID列表
      final reportedCommentIds = prefs.getStringList(reportedCommentsKey) ?? [];
      
      // 合并用户评论和样例评论，过滤掉被举报的评论
      final allComments = <Comment>[];
      allComments.addAll(userComments.where((comment) => !reportedCommentIds.contains(comment.id))); // 用户评论在前
      allComments.addAll(sampleComments.where((comment) => !reportedCommentIds.contains(comment.id))); // 样例评论在后
      
      setState(() {
        _comments.clear();
        _comments.addAll(allComments);
        _isLoadingComments = false;
      });
    } catch (e) {
      debugPrint('Error loading comments: $e');
      setState(() {
        _isLoadingComments = false;
      });
    }
  }

  Future<void> _saveUserComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final postCommentsKey = 'post_comments_${widget.post.postId}';
      
      // 只保存用户评论（isUserComment为true的评论）
      final userComments = _comments.where((comment) => comment.isUserComment).toList();
      final commentsJson = userComments.map((comment) => json.encode(comment.toJson())).toList();
      
      await prefs.setStringList(postCommentsKey, commentsJson);
    } catch (e) {
      debugPrint('Error saving comments: $e');
    }
  }

  Future<void> _refreshSampleComments() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final postSampleCommentsKey = 'post_sample_comments_${widget.post.postId}';
      
      // 清除旧的样例评论
      await prefs.remove(postSampleCommentsKey);
      
      // 重新加载评论（会自动生成新的样例评论）
      await _loadComments();
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Comments refreshed with new random selection!',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.primary,
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      debugPrint('Error refreshing sample comments: $e');
    }
  }

  Future<void> _initializeVideo() async {
    try {
      _videoController = VideoPlayerController.asset(widget.post.videoUrl);
      await _videoController!.initialize();
      await _videoController!.seekTo(Duration.zero);
      if (mounted) {
        setState(() {
          _isVideoInitialized = true;
        });
      }
    } catch (e) {
      debugPrint('Error initializing video: $e');
    }
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      _likeCount += _isLiked ? 1 : -1;
    });
    
    // 保存到本地存储
    _saveLikeStatus();
  }

  void _addComment() {
    final content = _commentController.text.trim();
    if (content.isNotEmpty) {
      final newComment = Comment(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        userName: 'You',
        userAvatar: 'assets/images/data/1/pic_1.jpg',
        content: content,
        time: 'now',
        isUserComment: true,
      );
      
      setState(() {
        _comments.insert(0, newComment);
      });
      
      _commentController.clear();
      FocusScope.of(context).unfocus();
      
      // 保存到本地存储
      _saveUserComments();
    }
  }

  Future<void> _reportComment(Comment comment) async {
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

    final confirmed = await showDialog<bool>(
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
                  Text('Report Comment'),
                ],
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Please select the reason for reporting this comment by ${comment.userName}:'),
                  const SizedBox(height: 15),
                  Container(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: SingleChildScrollView(
                      child: Column(
                        children: reasons.map((reason) => RadioListTile<String>(
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
                        )).toList(),
                      ),
                    ),
                  ),
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
    );

    if (confirmed == true) {
      await _removeReportedComment(comment);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Comment reported successfully. Thank you for helping keep our community safe.',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
            action: SnackBarAction(
              label: 'Undo',
              textColor: Colors.white,
              onPressed: () {
                _restoreReportedComment(comment);
              },
            ),
          ),
        );
      }
    }
  }

  Future<void> _removeReportedComment(Comment comment) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final reportedCommentsKey = 'reported_comments_${widget.post.postId}';
      
      // 获取已举报的评论ID列表
      final reportedCommentIds = prefs.getStringList(reportedCommentsKey) ?? [];
      
      // 添加当前评论ID到举报列表
      if (!reportedCommentIds.contains(comment.id)) {
        reportedCommentIds.add(comment.id);
        await prefs.setStringList(reportedCommentsKey, reportedCommentIds);
      }
      
      // 从显示列表中移除评论
      setState(() {
        _comments.removeWhere((c) => c.id == comment.id);
      });
    } catch (e) {
      debugPrint('Error removing reported comment: $e');
    }
  }

  Future<void> _restoreReportedComment(Comment comment) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final reportedCommentsKey = 'reported_comments_${widget.post.postId}';
      
      // 从举报列表中移除评论ID
      final reportedCommentIds = prefs.getStringList(reportedCommentsKey) ?? [];
      reportedCommentIds.remove(comment.id);
      await prefs.setStringList(reportedCommentsKey, reportedCommentIds);
      
      // 重新加载评论以恢复显示
      await _loadComments();
    } catch (e) {
      debugPrint('Error restoring reported comment: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.buttonText),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Post Details',
          style: TextStyle(
            color: AppColors.buttonText,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Post content
                  _buildPostContent(),
                  
                  // Like and comment stats
                  _buildPostStats(),
                  
                  // Action buttons
                  _buildActionButtons(),
                  
                  const Divider(height: 1),
                  
                  // Comments section
                  _buildCommentsSection(),
                ],
              ),
            ),
          ),
          
          // Comment input
          _buildCommentInput(),
        ],
      ),
    );
  }

  Widget _buildPostContent() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User info header
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primary.withOpacity(0.3),
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    widget.post.userAvatar,
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
                      widget.post.userName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.buttonText,
                      ),
                    ),
                    if (widget.post.userSignature.isNotEmpty)
                      Text(
                        widget.post.userSignature,
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
            ],
          ),
          
          const SizedBox(height: 16),
          
          // Post message
          if (widget.post.message.isNotEmpty)
            Text(
              widget.post.message,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          
          const SizedBox(height: 16),
          
          // Video player
          if (widget.post.videoUrl.isNotEmpty)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(
                      videoUrl: widget.post.videoUrl,
                      userMessage: widget.post.message,
                      userName: widget.post.userName,
                    ),
                  ),
                );
              },
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      if (_isVideoInitialized && _videoController != null)
                        SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: _videoController!.value.size.width,
                              height: _videoController!.value.size.height,
                              child: VideoPlayer(_videoController!),
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
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: const Offset(0, 8),
                                ),
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 40,
                                  offset: const Offset(0, 15),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                // Background circle with gradient
                                Container(
                                  width: 80,
                                  height: 80,
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
                                      size: 40,
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
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPostStats() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          if (_likeCount > 0) ...[
            Icon(
              Icons.favorite,
              size: 16,
              color: Colors.red[400],
            ),
            const SizedBox(width: 4),
            Text(
              '$_likeCount likes',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
          if (_likeCount > 0 && _comments.isNotEmpty)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                shape: BoxShape.circle,
              ),
            ),
          if (_comments.isNotEmpty)
            Text(
              '${_comments.length} comments',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: _toggleLike,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _isLiked ? Icons.favorite : Icons.favorite_border,
                    size: 22,
                    color: _isLiked ? Colors.red : Colors.grey[600],
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Like',
                    style: TextStyle(
                      fontSize: 15,
                      color: _isLiked ? Colors.red : Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: 22,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Comment',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_isLoadingComments)
          const Padding(
            padding: EdgeInsets.all(32),
            child: Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            ),
          )
        else if (_comments.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Comments (${_comments.length})',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonText,
                  ),
                ),
                GestureDetector(
                  onTap: _refreshSampleComments,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.refresh,
                          size: 16,
                          color: AppColors.primary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Refresh',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ..._comments.map((comment) => _buildCommentItem(comment)),
        ] else
          const Padding(
            padding: EdgeInsets.all(32),
            child: Center(
              child: Text(
                'No comments yet.\nBe the first to comment!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildCommentItem(Comment comment) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primary.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                comment.userAvatar,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.primary,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 18,
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
                Row(
                  children: [
                    Text(
                      comment.userName,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonText,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      comment.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    const Spacer(),
                    if (!comment.isUserComment) // 只有非用户评论才能举报
                      GestureDetector(
                        onTap: () => _reportComment(comment),
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            Icons.more_horiz,
                            size: 16,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  comment.content,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentInput() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primary.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/data/1/pic_1.jpg',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: AppColors.primary,
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 18,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: _commentController,
                  decoration: const InputDecoration(
                    hintText: 'Write a comment...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  ),
                  maxLines: null,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => _addComment(),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: _addComment,
              child: Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Comment {
  final String id;
  final String userName;
  final String userAvatar;
  final String content;
  final String time;
  final bool isUserComment;

  Comment({
    required this.id,
    required this.userName,
    required this.userAvatar,
    required this.content,
    required this.time,
    required this.isUserComment,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      userName: json['userName'],
      userAvatar: json['userAvatar'],
      content: json['content'],
      time: json['time'],
      isUserComment: json['isUserComment'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'userAvatar': userAvatar,
      'content': content,
      'time': time,
      'isUserComment': isUserComment,
    };
  }
} 