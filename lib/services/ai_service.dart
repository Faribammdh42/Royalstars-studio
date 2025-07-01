import 'dart:convert';
import 'package:http/http.dart' as http;

class AiService {
  final String _baseUrl = 'YOUR_AI_SERVER_URL'; // Replace with your actual AI server URL

  Future<String?> generateMusic(String prompt, String userId) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/generate_music'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'prompt': prompt,
          'user_id': userId,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['audio_url'];
      } else {
        print('Failed to generate music: ${response.body}');
        return null;
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
