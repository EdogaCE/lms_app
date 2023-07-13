import 'package:lms/components/api.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

class CallApi {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  postData(data) async {
    // var fullUrl = _url + apiUrl;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
