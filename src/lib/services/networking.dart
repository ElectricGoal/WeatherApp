import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class NetworkChecker {
  final String url;

  NetworkChecker({required this.url});

  Future<dynamic> getData() async {
    http.Response? response;
    try {
      response = await http.get(Uri.parse(url));
    } on SocketException catch (e) {
      print(e);
      return [];
    }

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
      return null;
    }
  }
}
