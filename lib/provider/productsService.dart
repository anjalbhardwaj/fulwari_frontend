import 'dart:convert';

import 'package:http/http.dart' as http;

import './../config/config.dart';

class ProductsService {
  var client = http.Client();
  getServiceFlowersList() async {
    var data = await client.get(Uri.parse(Strings.ApiUrl));
    print('Data is testing--->0');
    print(data.body);
    // print(jsonDecode(data));
    if (data != null) {
      print('data is coming');
      print(data);
    }
  }
}
