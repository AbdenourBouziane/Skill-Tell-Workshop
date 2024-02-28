import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl =
      'https://hangar-gym-server-side-git-main-abdenours-projects.vercel.app/classes.get';

  static Future<List<Map<String, dynamic>>> getClassesFromApi() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);

        final List<Map<String, dynamic>> classData =
            jsonData.cast<Map<String, dynamic>>();
        return classData;
      } else {
        throw Exception('Failed to load classes from API');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching data from API: $error');
      }
      rethrow;
    }
  }
}
