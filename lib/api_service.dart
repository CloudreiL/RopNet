import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user.dart';

class ApiService {
  static const String apiUrl = "https://api.json-generator.com/templates/PeR4OkOyI5Aj/data";
  static const String apiToken = "o7767bvcxk68gknwz9km1bxa9go1lc20ebrl5xz9";

  Future<User> fetchUser() async {
    final response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $apiToken',
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return User.fromJson(jsonResponse[0]);
    } else {
      throw Exception('Failed to load user');
    }
  }
}
