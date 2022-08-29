//ignore: unused_import
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/models/list/post_list_resp.dart';

class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setImageUrl(String value) {
    return _sharedPreferences!.setString('imageUrl', value);
  }

  String getImageUrl() {
    try {
      return _sharedPreferences!.getString('imageUrl') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setComments(List<Comments>? value) {
    return _sharedPreferences!.setString('comments', jsonEncode(value));
  }

  List<Comments>? getComments() {
    try {
      var jsonData =
          jsonDecode(_sharedPreferences!.getString('comments') ?? '');
      return (jsonData as List).map((e) => Comments.fromJson(e)).toList();
    } catch (e) {
      return null;
    }
  }
}
