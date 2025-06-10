class YogaUser {
  final int userId;
  final String name;
  final String profilePicture;
  final String userIcon;
  final String signature;
  final String? introduction;
  final List<dynamic>? post;
  final String? chatBackgroud;
  final String? profileBackgroud;

  YogaUser({
    required this.userId,
    required this.name,
    required this.profilePicture,
    required this.userIcon,
    required this.signature,
    this.introduction,
    this.post,
    this.chatBackgroud,
    this.profileBackgroud,
  });

  factory YogaUser.fromJson(Map<String, dynamic> json) {
    return YogaUser(
      userId: int.tryParse(json['userId'].toString()) ?? 0,
      name: json['name'] ?? '',
      profilePicture: json['profileicon'] ?? '',
      userIcon: json['userIcon'] ?? json['profileBackgroud'] ?? '',
      signature: json['signature'] ?? '',
      introduction: json['introduction'],
      post: json['post'],
      chatBackgroud: json['chatBackgroud'],
      profileBackgroud: json['profileBackgroud'],
    );
  }

  static YogaUser fromUserData(dynamic userData) {
    return YogaUser(
      userId: int.tryParse(userData['userId'].toString()) ?? 0,
      name: userData['name'] ?? '',
      profilePicture: userData['profileicon'] ?? '',
      userIcon: userData['chatBackgroud'] ?? userData['profileBackgroud'] ?? '',
      signature: userData['signature'] ?? '',
      introduction: userData['introduction'],
      post: userData['post'],
      chatBackgroud: userData['chatBackgroud'],
      profileBackgroud: userData['profileBackgroud'],
    );
  }
} 