import 'package:project_uas/CRUD/src/model/profile.dart';
import 'package:http/http.dart' as http;

// String baseUrl = 'http://api.bengkelrobot.net:8001';

Future<List<Post>> getPosts() async {
  final response = await http
      .get(Uri.parse('https://625bba3b50128c570206c29c.mockapi.io/crud'));
  return postFromJson(response.body);
}

Future<bool> createPost(Post post) async {
  final response = await http
      .post(Uri.parse('https://625bba3b50128c570206c29c.mockapi.io/crud'));
  return response.statusCode == 201;
}





















// import 'package:project_uas/CRUD/src/model/profile.dart';
// import 'package:http/http.dart' show Client;

// class ApiService {
//   final String baseUrl = "http://api.bengkelrobot.net:8001";
//   Client client = Client();

//   Future<List<Profile>> getProfiles() async {
//     final response = await client.get("$baseUrl/api/profile");
//     if (response.statusCode == 200) {
//       return profileFromJson(response.body);
//     } else {
//       return null;
//     }
//   }

//   Future<bool> createProfile(Profile data) async {
//     final response = await client.post(
//       "$baseUrl/api/profile",
//       headers: {"content-type": "application/json"},
//       body: profileToJson(data),
//     );
//     if (response.statusCode == 201) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<bool> updateProfile(Profile data) async {
//     final response = await client.put(
//       "$baseUrl/api/profile/${data.id}",
//       headers: {"content-type": "application/json"},
//       body: profileToJson(data),
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<bool> deleteProfile(int id) async {
//     final response = await client.delete(
//       "$baseUrl/api/profile/$id",
//       headers: {"content-type": "application/json"},
//     );
//     if (response.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
