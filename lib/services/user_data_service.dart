import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class UserDataService {
  static const String _userNameKey = 'user_name';
  static const String _userAvatarKey = 'user_avatar_filename';
  static const String _avatarFolderName = 'user_avatars';

  /// 获取用户姓名
  static Future<String> getUserName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userNameKey) ?? 'User Name';
  }

  /// 保存用户姓名
  static Future<bool> saveUserName(String name) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString(_userNameKey, name);
  }

  /// 获取头像文件路径
  static Future<String?> getUserAvatarPath() async {
    final prefs = await SharedPreferences.getInstance();
    final filename = prefs.getString(_userAvatarKey);
    if (filename == null) return null;

    final directory = await getApplicationDocumentsDirectory();
    final avatarDir = Directory('${directory.path}/$_avatarFolderName');
    final avatarPath = '${avatarDir.path}/$filename';
    
    // 检查文件是否存在
    if (await File(avatarPath).exists()) {
      return avatarPath;
    }
    return null;
  }

  /// 保存用户头像
  static Future<String?> saveUserAvatar(File imageFile) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final avatarDir = Directory('${directory.path}/$_avatarFolderName');
      
      // 创建头像目录（如果不存在）
      if (!await avatarDir.exists()) {
        await avatarDir.create(recursive: true);
      }

      // 生成唯一文件名
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final extension = imageFile.path.split('.').last;
      final filename = 'avatar_$timestamp.$extension';
      final newPath = '${avatarDir.path}/$filename';

      // 复制文件到应用目录
      await imageFile.copy(newPath);

      // 保存文件名到SharedPreferences
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_userAvatarKey, filename);

      // 删除旧的头像文件（如果存在）
      await _deleteOldAvatars(avatarDir, filename);

      return newPath;
    } catch (e) {
      debugPrint('保存头像失败: $e');
      return null;
    }
  }

  /// 删除旧的头像文件
  static Future<void> _deleteOldAvatars(Directory avatarDir, String currentFilename) async {
    try {
      final files = avatarDir.listSync();
      for (final file in files) {
        if (file is File && 
            file.path.contains('avatar_') && 
            !file.path.contains(currentFilename)) {
          await file.delete();
        }
      }
    } catch (e) {
      debugPrint('删除旧头像失败: $e');
    }
  }

  /// 清除所有用户数据
  static Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userNameKey);
    await prefs.remove(_userAvatarKey);

    // 删除头像目录
    try {
      final directory = await getApplicationDocumentsDirectory();
      final avatarDir = Directory('${directory.path}/$_avatarFolderName');
      if (await avatarDir.exists()) {
        await avatarDir.delete(recursive: true);
      }
    } catch (e) {
      debugPrint('删除头像目录失败: $e');
    }
  }
} 