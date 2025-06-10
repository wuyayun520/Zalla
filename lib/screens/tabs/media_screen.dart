import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../../constants/app_colors.dart';
import '../../models/yoga_user.dart';
import '../chat_page.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  List<dynamic> _users = [];
  List<ChatConversation> _conversations = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await _loadUsers();
    await _loadConversations();
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _loadUsers() async {
    try {
      final String jsonString = await DefaultAssetBundle.of(context)
          .loadString('assets/json/infos.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      setState(() {
        _users = jsonData['allData'] ?? [];
      });
    } catch (e) {
      print('Error loading users: $e');
    }
  }

  Future<void> _loadConversations() async {
    List<ChatConversation> conversations = [];
    final dir = await getApplicationDocumentsDirectory();
    
    for (var user in _users) {
      final file = File('${dir.path}/chat_history_${user['userId']}.json');
      if (await file.exists()) {
        try {
          final jsonStr = await file.readAsString();
          final List<dynamic> messages = json.decode(jsonStr);
          if (messages.isNotEmpty) {
            final lastMessage = messages.last;
            conversations.add(ChatConversation(
              user: user,
              lastMessage: _getMessagePreview(lastMessage),
              lastMessageTime: lastMessage['time'] ?? '00:00',
              isOnline: _getRandomOnlineStatus(),
            ));
          }
        } catch (e) {
          print('Error loading chat history for user ${user['userId']}: $e');
        }
      }
    }
    
    // Sort by time (most recent first) - only if there are actual conversations
    if (conversations.isNotEmpty) {
      conversations.sort((a, b) => b.lastMessageTime.compareTo(a.lastMessageTime));
    }
    
    setState(() {
      _conversations = conversations;
    });
  }

  String _getMessagePreview(Map<String, dynamic> message) {
    switch (message['type']) {
      case 'image':
        return '[Image]';
      case 'audio':
        return '[Voice message]';
      case 'text':
      default:
        final text = message['text']?.toString() ?? '';
        return text.length > 30 ? '${text.substring(0, 30)}...' : text;
    }
  }

  bool _getRandomOnlineStatus() {
    final statuses = [true, false, true, true, false];
    statuses.shuffle();
    return statuses.first;
  }

  void _openChat(dynamic user) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatPage(
          user: YogaUser.fromUserData(user),
        ),
      ),
    ).then((_) {
      // Refresh conversations when returning from chat
      _loadConversations();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xFFA9D38E),
        body: Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFA9D38E),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA9D38E),
        elevation: 0,
        title: const Text(
          'Message',
          style: TextStyle(
            color: AppColors.buttonText,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          // Top user avatars section
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: _users.length,
              itemBuilder: (context, index) {
                final user = _users[index];
                final isOnline = index % 3 == 0; // Some users online
                return Container(
                  width: 70,
                  margin: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () => _openChat(user),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  user['profileicon'],
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
                            if (isOnline)
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: Container(
                                  width: 14,
                                  height: 14,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF4CAF50),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          user['name'].toString().split(' ').first,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.buttonText,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Chat conversations list
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: _conversations.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline,
                            size: 80,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'No conversations yet',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Start chatting with someone!',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(top: 20),
                      itemCount: _conversations.length,
                      itemBuilder: (context, index) {
                        final conversation = _conversations[index];
                        return _buildConversationItem(conversation);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConversationItem(ChatConversation conversation) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => _openChat(conversation.user),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // User avatar with online status
                Stack(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                          width: 1,
                        ),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          conversation.user['profileicon'],
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
                    if (conversation.isOnline)
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4CAF50),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                
                const SizedBox(width: 15),
                
                // Conversation info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              conversation.user['name'].toString(),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.buttonText,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            conversation.lastMessageTime,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        conversation.lastMessage,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatConversation {
  final dynamic user;
  final String lastMessage;
  final String lastMessageTime;
  final bool isOnline;

  ChatConversation({
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isOnline,
  });
} 