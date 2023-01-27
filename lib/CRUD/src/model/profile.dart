import 'dart:convert';

class Post {
  String id;
  String name;
  String account;
  int age;

  Post(
      {required this.id,
      required this.name,
      required this.account,
      required this.age});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json["id"],
        name: json["name"],
        account: json["account"],
        age: json["age"]);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "account": account, "age": age};
  }

  @override
  String toString() {
    return 'Profile{id: $id, name: $name, account: $account, age: $age}';
  }
}

List<Post> postFromJson(String strJson) {
  final str = json.decode(strJson);
  return List<Post>.from(str.map((item) {
    return Post.fromJson(item);
  }));
}

String postToJson(Post data) {
  final dyn = data.toJson();
  return json.encode(dyn);
}

// List<Post> profileFromJson(String jsonData) {
//   final data = json.decode(jsonData);
//   return List<Post>.from(data.map((item) => Post.fromJson(item)));
// }

// String profileToJson(Post data) {
//   final jsonData = data.toJson();
//   return json.encode(jsonData);
// }
