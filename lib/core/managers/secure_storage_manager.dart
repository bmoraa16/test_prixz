import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  static final SecureStorageManager _instance =
      SecureStorageManager._internal();

  factory SecureStorageManager() {
    return _instance;
  }

  SecureStorageManager._internal();

  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  write(String key, String value) async {
    await _instance._storage.write(key: key, value: value);
    return null;
  }

  Future<String?> read(String key) async {
    final value = await _instance._storage.read(key: key);
    return value;
  }

  static Future<void> deleteKey(String key) async {
    await _instance._storage.delete(key: key);
  }

  deleteAll() async {
    await _instance._storage.deleteAll();
  }

  static Future<void> deleteAllKeys() async {
    await _instance._storage.deleteAll();
  }

  static Future<void> setUsername(String username) async {
    await _instance._storage.write(key: "username", value: username);
  }

  static Future<String> getUsername() async {
    return await _instance._storage.read(key: "username") ?? "";
  }

  static Future<void> setPassword(String password) async {
    await _instance._storage.write(key: "password", value: password);
  }

  static Future<String> getPassword() async {
    return await _instance._storage.read(key: "password") ?? "";
  }

  static Future<void> setBearerToken(String token) async {
    await _instance._storage.write(key: "bearer-token", value: token);
  }

  static Future<String> getBearerToken() async {
    return await _instance._storage.read(key: "bearer-token") ?? "";
  }

  static Future<void> setZocDocBearerToken(String token) async {
    await _instance._storage.write(key: "zoc-doc-bearer-token", value: token);
  }

  static Future<String> getZocDocBearerToken() async {
    return await _instance._storage.read(key: "zoc-doc-bearer-token") ?? "";
  }

  static Future<void> setZocDocRefreshToken(String token) async {
    await _instance._storage.write(key: "zoc-doc-refresh-token", value: token);
  }

  static Future<String> getZocDocRefreshToken() async {
    return await _instance._storage.read(key: "zoc-doc-refresh-token") ?? "";
  }

  static Future<void> deleteZocDocRefreshToken() async {
    await _instance._storage.delete(key: 'zoc-doc-refresh-token');
  }

  static Future<void> setHbkey(String token) async {
    await _instance._storage.write(key: "hbkey", value: token);
  }

  static Future<String> getHbkey() async {
    return await _instance._storage.read(key: "hbkey") ?? "";
  }

  static Future<void> setFcmToken(String token) async {
    await _instance._storage.write(key: "fcm-token", value: token);
  }

  static Future<String> getFcmToken() async {
    return await _instance._storage.read(key: "fcm-token") ?? "";
  }

  static Future<void> setPolicyHbkey(String token) async {
    await _instance._storage.write(key: "policy-hbkey", value: token);
  }

  static Future<String> getPolicyHbkey() async {
    return await _instance._storage.read(key: "policy-hbkey") ?? "";
  }

  static const String contactHbKey = "contact-hbkey";

  static Future<void> setContactHbkey(String token) async {
    await _instance._storage.write(key: contactHbKey, value: token);
  }

  static Future<String> getContactHbkey() async {
    return await _instance._storage.read(key: contactHbKey) ?? "";
  }
}
