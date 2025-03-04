import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/helpers.dart';

class SharedPreferencesManager {
  static final SharedPreferencesManager _instance =
      SharedPreferencesManager._internal();

  factory SharedPreferencesManager() {
    return _instance;
  }

  SharedPreferencesManager._internal() {
    SharedPreferences.getInstance().then((value) => preferences = value);
  }

  late SharedPreferences preferences;

  static Future<void> removeKey(String key) async {
    await _instance.preferences.remove(key);
  }

  static Future<String> getUsername() async =>
      _instance.preferences.getString("username") ?? "";

  static String getPassword() =>
      _instance.preferences.getString("password") ?? "";

  static Future<void> setIsFirstTimeRunning(bool allowBiometrics) async {
    await _instance.preferences.setBool("first-time-run", allowBiometrics);
  }

  static Future<bool> getIsFirstTimeRunning() async {
    return _instance.preferences.getBool("first-time-run") ?? true;
  }

  static Future<void> setAllowBiometrics(bool allowBiometrics) async {
    await _instance.preferences.setBool("allowBiometrics", allowBiometrics);
  }

  static Future<bool> getAllowBiometrics() async {
    return _instance.preferences.getBool("allowBiometrics") ?? false;
  }

  static Future<void> setNormalPolicies(bool hasNormalPolicies) async {
    await _instance.preferences.setBool("normalPolicies", hasNormalPolicies);
  }

  static Future<bool> hasNormalPolicies() async {
    return _instance.preferences.getBool("normalPolicies") ?? false;
  }

  static Future<void> setDentalPolicy(bool hasDentalPolicy) async {
    await _instance.preferences.setBool("dentalPolicy", hasDentalPolicy);
  }

  static Future<bool> hasDentalPolicy() async {
    return _instance.preferences.getBool("dentalPolicy") ?? false;
  }

  static Future<void> setVisionPolicy(bool hasVisionPolicy) async {
    await _instance.preferences.setBool("visionPolicy", hasVisionPolicy);
  }

  static Future<bool> hasVisionPolicy() async {
    return _instance.preferences.getBool("visionPolicy") ?? false;
  }

  static Future<void> setAppStatus(int status) async {
    _instance.preferences.setInt("app-status", status);
  }

  static Future<int> getAppStatus() async {
    return _instance.preferences.getInt("app-status") ?? 1;
  }

  static Future<void> setExpandSheet(bool status) async {
    _instance.preferences.setBool("expand-sheet", status);
  }

  static Future<bool> getExpandSheet() async {
    return _instance.preferences.getBool("expand-sheet") ?? false;
  }

  static Future<void> setShowRx(bool status) async {
    _instance.preferences.setBool("show-rx", status);
  }

  static Future<bool> getShowRx() async {
    return _instance.preferences.getBool("show-rx") ?? false;
  }

  static Future<void> setScreenDiagonal(double diagonal) async {
    await _instance.preferences.setDouble("diagonal", diagonal);
  }

  static Future<double> getScreenDiagonal() async {
    return _instance.preferences.getDouble("diagonal") ?? 0;
  }

  static Future<void> saveOnBackgroundTime() async {
    final time = Helpers.dateWithTimeToString(DateTime.now());
    log("background time: $time");
    await _instance.preferences.setString("on-background-time", time);
  }

  static Future<DateTime> getOnBackgroundTime() async {
    final time = _instance.preferences.getString("on-background-time");
    log("background time: $time");
    return Helpers.stringToDate(time)!;
  }

  static Future<void> saveSurveyUrl(String url) async {
    await _instance.preferences.setString("survey_url", url);
  }

  static Future<String> getSurveyUrl() async {
    return _instance.preferences.getString("survey_url") ?? "";
  }

  static Future<void> set1095DocRequested(bool value) async {
    await _instance.preferences.setBool("form_1095_requested", value);
  }

  static Future<bool> get1095DocRequested() async {
    return _instance.preferences.getBool("form_1095_requested") ?? false;
  }

  static Future<void> setSelectedPlan(
    String planId,
    String planName,
    String insuranceCarrier,
    String insuranceCarrierId,
  ) async {
    await _instance.preferences.setString('selectedPlanId', planId);
    await _instance.preferences.setString('selectedPlanName', planName);
    await _instance.preferences
        .setString('selectedInsuranceCarrier', insuranceCarrier);
    await _instance.preferences
        .setString('selectedInsuranceCarrierId', insuranceCarrierId);
  }

  static Future<void> setImPayingForMyself(bool value) async {
    await _instance.preferences.setBool('imPayingForMyself', value);
  }

  static Future<bool> getImPayingForMyself() async {
    return _instance.preferences.getBool("imPayingForMyself") ?? false;
  }

  static Future<String?> getSelectedPlanId() async {
    return _instance.preferences.getString('selectedPlanId');
  }

  static Future<String?> getSelectedPlanName() async {
    return _instance.preferences.getString('selectedPlanName');
  }

  static Future<String?> getSelectedInsuranceCarrier() async {
    return _instance.preferences.getString('selectedInsuranceCarrier');
  }

  static Future<String?> getSelectedInsuranceCarrierId() async {
    return _instance.preferences.getString('selectedInsuranceCarrierId');
  }

  static Future<void> clearSelectedPlan() async {
    await _instance.preferences.remove('selectedPlanId');
    await _instance.preferences.remove('selectedPlanName');
    await _instance.preferences.remove('selectedInsuranceCarrier');
    await _instance.preferences.remove('imPayingForMyself');
  }

  static Future<void> setRotationIndexBanners(int status) async {
    _instance.preferences.setInt("index-banners", status);
  }

  static Future<int> getRotationIndexBanners() async {
    return _instance.preferences.getInt("index-banners") ?? 0;
  }

  static Future<void> setBannersRotatedThisSession(bool value) async {
    await _instance.preferences.setBool("banners_rotated_this_session", value);
  }

  static Future<bool> hasBannersRotatedThisSession() async {
    return _instance.preferences.getBool("banners_rotated_this_session") ??
        false;
  }

  static Future<void> setZocdocAvailable(bool value) async {
    await _instance.preferences.setBool('zocdocAvailable', value);
  }

  static Future<bool> getZocdocAvailable() async {
    return _instance.preferences.getBool("zocdocAvailable") ?? false;
  }
}
