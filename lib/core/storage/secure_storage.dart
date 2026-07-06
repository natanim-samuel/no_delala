import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage._();

  static final FlutterSecureStorage _storage =
  const FlutterSecureStorage();

  static const _tokenKey = 'access_token';
  static const _refreshTokenKey = 'refresh_token';

  // Save Access Token
  static Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  // Read Access Token
  static Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }

  // Save Refresh Token
  static Future<void> saveRefreshToken(String token) async {
    await _storage.write(key: _refreshTokenKey, value: token);
  }

  // Read Refresh Token
  static Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshTokenKey);
  }

  // Clear Everything
  static Future<void> clear() async {
    await _storage.deleteAll();
  }
}