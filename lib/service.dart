import 'package:http/http.dart' as http;

class ServiceClass {
  Future<http.Response> fetchAlbum() async {
    var response = await http.get(
      Uri.parse('https://catfact.ninja/fact'),
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
