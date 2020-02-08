import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String token;
  
  User({this.token});

  factory User.createUser(Map<String, dynamic> object){
    return User(
      token: object["token"],
    );
  }

  static Future<User> connectToAPI(String email, String password) async
  {
    String stringUrl = "https://reqres.in/api/login";
    var apiResult = await http.post(stringUrl, body: {
      "email": email,
      "password": password,
    });

    var jsonObject = json.decode(apiResult.body);

    return User.createUser(jsonObject);
  }
}