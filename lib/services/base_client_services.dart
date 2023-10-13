import 'dart:convert';

import 'package:http/http.dart' as http;

const baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';

class BaseClient {
  var client = http.Client();

  //Get
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      'Error Occured';
    }
  }

// Post
  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var payload = jsonEncode(object);
     var headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.post(url, body: payload, headers: headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      'Error Occured';
    }
  }

// Put
  Future<dynamic> put(String api) async {}

// Delet
  Future<dynamic> delete(String api) async {}
}
