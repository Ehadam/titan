import 'package:http/http.dart' as http;

Future<void> fetchImage(String imageUrl) async {
  var response = await http.get(imageUrl);
  print(response);
}